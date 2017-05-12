module ApplicationHelper
  
	def active?(path)
		"active" if current_page?(path)
	end

	def priority_label priority
		priority_span_generator priority
	end
	
	def state_label state
		state_span_generator state
	end

	private
		
	def priority_span_generator priority
		case priority
		when 'Critical'
			content_tag(:span, priority.titleize, class: 'label label-danger')
		when 'High'
			content_tag(:span, priority.titleize, class: 'label label-warning')
		when 'Moderate'
			content_tag(:span, priority.titleize, class: 'label label-success')
		when 'Low'
			content_tag(:span, priority.titleize, class: 'label label-success')
		when 'Trivial'
			content_tag(:span, priority.titleize, class: 'label label-success')
		end
	end
	
	def state_span_generator state
		case state
		when 'Submitted'
			content_tag(:span, state.titleize, class: 'label label-primary')
		when 'Waiting Review'
			content_tag(:span, state.titleize, class: 'label label-primary')
		when 'Executing'
			content_tag(:span, state.titleize, class: 'label label-primary')
		when 'Waiting Review'
		when 'Reviewing'
			content_tag(:span, state.titleize, class: 'label label-primary')
		when 'Rejected'
			content_tag(:span, state.titleize, class: 'label label-danger')
		when 'Completed'
			content_tag(:span, state.titleize, class: 'label label-success')
		end
	end
	
end
