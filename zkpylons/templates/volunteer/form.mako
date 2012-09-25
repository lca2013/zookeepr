      <p>${ h.event_name() } is a volunteer-run conference and needs enthusiastic people to make it a success. Volunteering at ${ h.event_shortname() } is a great opportunity to get involved and to give back to the community.</p>

      <p>If you decide to volunteer, you will be asked to attend a training course which will walk you through tasks that you will need to perform. Things like operating video cameras, registering people, and dealing with emergencies are all covered. Training courses will be held in mid-December, mid-January, and on the weekend before the conference. You will only need to attend one course before the conference.</p>

      <p>Please use the checkboxes below to indicate your availability and to let us know what kind of thing you can help out with. If you have any restrictions on your time please mention it in the "Other" text box. If you have some skill or experience that you think might really help, mention it in the "Experience" text box.</p>

      <table>
% for category in h.lca_rego['volunteer']:
        <tr>
          <td colspan='2'><h3>${ category['title'] }</h3></td>
        </tr>
%   for area in category['questions']:
<%    code = area['name'].replace(' ', '_').replace('.', '_') %>
        <tr class="${ h.cycle('even', 'odd') }">
          <td valign="middle" align="center">${ h.checkbox('volunteer.areas.' + code) }</td>
          <td>${ area['name'] }
%     if area.has_key('description'):
            <br><small>${ area['description'] }</small>
%     endif
          </td>
        </tr>
%   endfor
% endfor
        <tr>
            <td colspan='2'><h3>Other Information</h3></td>
        </tr>
        <tr class="${ h.cycle('even', 'odd') }">
          <td valign="top">
            <p class="entries">Other:</p>
          </td>
          <td>
            <p>${ h.textarea('volunteer.other', cols="60", rows="4") }</p>
            <p class="note">Please provide any other relevant information such as your areas of interest, arrival and departure dates (if you're not local), your availability during ${ h.event_shortname() }, and any special requirements (dietary or otherwise).</p>
          </td>
        </tr>

        <tr class="${ h.cycle('even', 'odd') }">
          <td valign="top">
            <p class="entries">Experience:</p>
          </td>
          <td>
            <p>${ h.textarea('volunteer.experience', cols="60", rows="4") }</p>
            <p class="note">Please provide details of your involvement at previous conferences. If you have selected the technical option above (i.e., A/V), then please indicate your relevant experience and skills here.</p>
          </td>
        </tr>
      </table>
