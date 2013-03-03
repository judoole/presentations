package judoole

import org.junit.Test

import static org.hamcrest.CoreMatchers.equalTo
import static org.junit.Assert.assertThat

public class UserTest{
    @Test
    public void creating_objects_with_private_fields(){
        def user = new User(firstname: "Ole C", surname: "Longfeathers")
        assertThat(user.fullname(), equalTo("Ole C Longfeathers"));
    }

}