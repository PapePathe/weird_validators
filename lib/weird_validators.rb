require "active_model"
require "active_model/validations"
require "weird_validators/version"
require "weird_validators/positivity_validator"


ActiveModel::Validations.__send__(:include, WeirdValidators)

module WeirdValidators
end
