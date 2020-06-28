class ChangeRequest < ApplicationRecord
    has_one :change_impact
    



    def create_volumes(change_request)
        @change_impact = ChangeImpact.new(
            'change_request_id' => ChangeRequest.last.id
            
        )
        @change_approve = ChangeApprove.new(
            'change_request_id' => ChangeRequest.last.id
        )
        @change_implementation = ChangeImplementation.new(
            'change_request_id' => ChangeRequest.last.id
        )
        @change_impact.save!
        @change_approve.save!
        @change_implementation.save!

        # send email for the request has been created
        
    end
end