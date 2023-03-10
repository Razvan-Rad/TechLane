package com.parking.techlane.ejb;

import com.parking.techlane.common.UserDto;
import com.parking.techlane.entities.User;
import com.parking.techlane.entities.UserGroup;
import jakarta.ejb.EJBException;
import jakarta.ejb.Stateless;
import jakarta.inject.Inject;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Stateless

public class UserBean {
    private static final Logger LOG = Logger.getLogger(UserBean.class.getName());
    @PersistenceContext
    EntityManager entityManager;

    public List<UserDto> findAllUsers() {
        LOG.info("findAllUsers");
        try {
            TypedQuery<User> typedQuery =
                    entityManager.createQuery("SELECT u FROM User u", User.class);
            List<User> users = typedQuery.getResultList();
            return copyUsersToDto(users);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }


    private List<UserDto> copyUsersToDto(List<User> users) {
        List<UserDto> userDto;
        userDto = users.stream().map(x-> new UserDto(x.getEmail(), x.getPassword(), x.getUsername(), x.getBalance(), x.getId())).collect(Collectors.toList());

        return userDto;
    }

    @Inject PasswordBean passwordBean;
    public void createUser(String username, String email, String password, double balance, Collection<String> groups) {
        LOG.info("createUser");
        User newUser = new User();

        newUser.setUsername(username);
        newUser.setEmail(email);
        newUser.setPassword(passwordBean.convertToSha256(password));
        newUser.setBalance(balance);
        entityManager.persist(newUser);
        assignGroupsToUser(username, groups);
    }

    private void assignGroupsToUser(String username, Collection<String> groups) {
        LOG.info("assignGroupsToUser");
        for (String group : groups) {
            UserGroup userGroup = new UserGroup();
            userGroup.setUsername(username);
            userGroup.setUserGroup(group);
            entityManager.persist(userGroup);
        }
    }

    public Collection<String> findUsernamesByUserIds(Collection<Long>userIds){
        List<String >usernames=entityManager.createQuery("SELECT u.username from User u where u.id in :userIds",String.class)
                .setParameter("userIds",userIds).getResultList();
        return usernames;
    }
}
