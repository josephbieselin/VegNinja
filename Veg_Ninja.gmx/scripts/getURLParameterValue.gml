///getURLParameterValue(param)
// works with URL parameter passing, i.e.: ?key=value
// this function will return the value field after an equal character

var data = argument0;

var equalPos = string_pos("=", data);
if equalPos != 0
    {
    // Delete everything up to and including the char searched for
    // Should only leave the value field of the passed in param
    var returnValue = string_delete(data, 0, equalPos+1);
    return returnValue;
    }
else
    {
    return data;
    }
