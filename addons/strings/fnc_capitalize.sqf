/* ----------------------------------------------------------------------------
Function: CBA_fnc_capitalize

Description:
    Upper case the first letter of the string, lower case the rest.

Parameters:
    _string - String to capitalize [String]

Returns:
    Capitalized string [String].

Examples:
    (begin example)
        _result = ["FISH"] call CBA_fnc_capitalize;
        // _result => "Fish"

        _result = ["frog-headed fish"] call CBA_fnc_capitalize;
        // _result => "Frog-headed fish"
    (end)

Author:
    Spooner, joko // Jonas
---------------------------------------------------------------------------- */

#include "script_component.hpp"

SCRIPT(capitalize);

// ----------------------------------------------------------------------------
private ["_charCount","_string1","_string2"];
params ["_string"];

_charCount = count _string;
if (_charCount > 0) then {
    // Take first Char and Upper case
    _string1 = (toUpper _string) select [0,1];
    // Take rest and lower it
    _string2 = (toLower _string) select [1];
    // Compile String
    _string = _string1 + _string2;
};

_string; // Return.
