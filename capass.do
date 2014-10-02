*! version 0.1, 02oct2014, Max Löffler <loeffler@zew.de>
/**
 * CAPASS - WRAPPER FOR STATA'S ASSERT COMMAND, THROWS ERROR MESSAGES
 * 
 * Checks if assertion evaluates to false and, if so, throws an error message.
 * This is somehow related to common try-catch exception handling constructs.
 *
 * @author Max Löffler <loeffler@zew.de>
 * @param `0'     Pass thru for assertion to verify
 * @param `throw' Error message to be shown when assertion is false
 * @param `rc0'   Pass thru for assert's option `rc0'
 * @param `null'  Pass thru for assert's option `null'
 * @param `fast'  Pass thru for assert's option `fast'
 * 
 * 2014-10-02   Initial version (v0.1)
 */

cap program drop capass
program define capass
    syntax anything(name=0) [, Throw(string) Rc0 Null Fast] 
    
    // Maybe a normal assert would be alight?
    if ("`throw'" != "") {
        // Test assertion
        cap assert `0', `null' `fast'
        
        // Let's call the police
        if (_rc != 0) {
            noi di as error "`throw'"
            assert `0', `rc0' `null' `fast'
        }
    }
    // Just assert and leave
    else assert `0', `rc0' `null' `fast'
end

***