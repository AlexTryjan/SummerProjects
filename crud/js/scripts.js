
function urlIDchangeU()
	{
		document.rest.action = "update.cfm?restaurantID=" + document.rest.ID.value;
		return true;
	}

function urlIDchangeD()
	{
		document.rest.action = "delete.cfm?restaurantID=" + document.rest.ID.value;
		return true;
	}

