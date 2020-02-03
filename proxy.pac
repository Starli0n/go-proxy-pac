function FindProxyForURL(url, host) {

	if (shExpMatch(host, "*.corp"))
	{
		return "PROXY localhost:3128";
	}

	return "DIRECT";
}

