-- create 2016-09-09 by guosc
--
-- email - yttch_9921@yeah.net
--
--

local host = ngx.var.host
local uri = ngx.var.uri
local str_match = string.match


function string.split(str, delimiter)
        if str==nil or str=='' or delimiter==nil then
                return nil
        end

    local result = {}
    for match in (str..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match)
    end
    return result
end


local result = string.split(uri, 'index.m3u8')
ngx.log(ngx.ERR, "request host: " .. result[1])
if result then
	local uri_front = result[1]
	local uri_back = 'index-vod.m3u8'
	local redirect_url = 'http://' .. host .. uri_front .. uri_back
		local pass_url = uri_front .. uri_back
				 
	ngx.var.upstream_location = pass_url
	ngx.req.set_uri(pass_url)
	--return ngx.redirect(tostring(redirect_url))
end
