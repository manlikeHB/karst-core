// *************************************************************************
//                            HUB RESTRICTION
// *************************************************************************
pub mod HubRestricted {
    use starknet::{ContractAddress, get_caller_address};
    use karst::base::errors::Errors;

    pub fn hub_only(hub: ContractAddress) {
        let caller = get_caller_address();
        assert(caller == hub, Errors::HUB_RESTRICTED);
    }
}
