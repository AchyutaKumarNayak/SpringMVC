package in.ashokit.binding;



import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	@NotEmpty(message = "User name is mandatory")
	@Size(min = 5,message = "User name must contain atleast 5 letters")
	private String userName;
	
	@NotEmpty(message = "Password canot be empty")
	private String userPwd;
	
	@NotNull(message ="PhnNo canot be empty" )
	@Min(value = 10)
	private Long phnNo;
	
	@NotEmpty(message ="Email canot be empty" )
	@Email(message = "Enter a valid Email")
	private String userEmail;
	
	@NotNull(message ="Age canot be empty" )
	@Min(value = 23,message = "Age should not less than 23")
	@Max(value = 60,message = "Age should not cross 60")
	private Integer age;

}
