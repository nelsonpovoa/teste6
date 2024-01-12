package com.example.config;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
@EnableWebSecurity
public class Config {
private static final  Logger logger = Logger.getLogger(Config.class.getName());
	
	
	//@Autowired
    //SecurityFilter securityFilter;

	
	@Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity) throws Exception {
		
		 //return httpSecurity.authorizeHttpRequests((requests) -> requests.anyRequest().authenticated());
		
		 
        return  httpSecurity
                //.csrf(csrf -> csrf.disable())
                //.sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(authorize -> {
					try {
						authorize.requestMatchers("/account").authenticated()
							.requestMatchers("/balance").authenticated()
							.requestMatchers("/update").permitAll()
							.requestMatchers("/main").permitAll()
							.requestMatchers(
				                    "/images/**",
				                    "/css/**",
				                    "/webjars/**",
				                    "/register/**",
				                    "/loja").
							permitAll()
								//.requestMatchers("/**").permitAll()
						//		.requestMatchers(HttpMethod.GET, "/account/**").permitAll()
						//        .requestMatchers(HttpMethod.GET, "/balance").permitAll()
						        //.requestMatchers(HttpMethod.POST, "/auth/register").permitAll()
						        //.requestMatchers(HttpMethod.POST, "/product").hasRole("ADMIN")
						        .and().formLogin().and().httpBasic();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
                )
                //.addFilterBefore(securityFilter, UsernamePasswordAuthenticationFilter.class)
                .build(); 
    }
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}
	
	//@Bean
	/*public UserDetailsService userDetailsService() {
		logger.info("userDetailsService");
		
		UserDetails user =
			 User.withDefaultPasswordEncoder()
				.username("nelson")
				.password("123456")
				.roles("ADMIN", "USER")
				.build();

		 UserDetails admin = User.builder()
			        .username("ricardo")
			        .password(passwordEncoder().encode("123456"))
			        .roles("USER", "ADMIN")
			        .build();
		 
		return new InMemoryUserDetailsManager(user, admin);
	}*/
	
//	 @Bean
//	  public PasswordEncoder passwordEncoder() {
//	    return new BCryptPasswordEncoder();
//	  }
	
	/*
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		//super.configure(auth);
		
		auth.inMemoryAuthentication().withUser("admin").password("123456").authorities("admin").
		and().withUser("user").password("1234").authorities("read").
		and().passwordEncoder(NoOpPasswordEncoder.getInstance());
		
	} */
	
}
