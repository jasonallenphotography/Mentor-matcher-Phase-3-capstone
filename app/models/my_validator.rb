class MyValidator < ActiveModel::Validator

  def validate(record)
    if record = Match.where(initiator_id: record.initiator_id, receiver_id: record.receiver_id)
      if record.length > 0
        record.last.errors[:create] << 'This match already exists! View your Requests page.'
        # binding.pry
      end
    end
  end

end
