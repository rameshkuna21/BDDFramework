package runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(
		features="src\\test\\resources\\Featurs\\regreesion",
		glue="steps",
		stepNotifications=true,
		tags="@wip2907a",
		dryRun=false
		
		
		
		)

public class RegressionRunner {

}
