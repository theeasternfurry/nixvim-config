{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "ollama";
      providers = {
        ollama = {
          __inherited_from = "openai";
          endpoint = {
            __raw = "os.getenv('OLLAMA_API_URL') or 'http://127.0.0.1:11434/v1'";
          };
          model = "qwen2.5-coder:7b";
          api_key_name = "";

          parse_curl_args = {
            __raw = ''
              function(opts, code_opts)
                return {
                  url = opts.endpoint .. "/chat/completions",
                  headers = {
                    ["Accept"] = "application/json",
                    ["Content-Type"] = "application/json",
                  },
                  body = vim.tbl_deep_extend("force", {
                    model = opts.model,
                    messages = code_opts.messages,
                    stream = true,
                    temperature = 0,
                  }, opts.proxy and { proxy = opts.proxy } or {}),
                }
              end
            '';
          };
          parse_response_data = {
            __raw = ''
              function(data_stream, event_state, opts)
                if event_state == "done" or data_stream == "[DONE]" then
                  opts.on_complete()
                  return
                end
                if data_stream == nil or data_stream == "" then return end
                local ok, json = pcall(vim.json.decode, data_stream)
                if not ok then return end
                if json.choices and json.choices[1] and json.choices[1].delta and json.choices[1].delta.content then
                  opts.on_chunk(json.choices[1].delta.content)
                end
                if json.choices and json.choices[1] and json.choices[1].finish_reason == "stop" then
                  opts.on_complete()
                end
              end
            '';
          };
        };
      };
      file_selector = {
        provider = "fzf";
        fzf_lua_viewer = "builtin";
      };
    };
  };
}
