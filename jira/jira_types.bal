//
// Copyright (c) 2018, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.
//

documentation{Represents a summary of a jira project.
    F{{resource_path}} API resource url
    F{{id}} project Id
    F{{key}} project key
    F{{name}} project name
    F{{description}} project description
    F{{category}} project category
    F{{projectTypeKey}} type of the project("software/business")
}
public type ProjectSummary record {
    string resource_path;
    string id;
    string key;
    string name;
    string description;
    string category;
    string projectTypeKey;
};

documentation{Represents a detailed jira project.
    F{{resource_path}} API resource url
    F{{id}} project Id
    F{{key}} project key
    F{{name}} project name
    F{{description}} project description
    F{{leadName}} jira username of the project lead
    F{{projectTypeKey}} type of the project("software" or "business")
    F{{avatarUrls}} project avatar urls
    F{{projectCategory}} details of project category
    F{{issueTypes}} support issue types of the project
    F{{components}} summarized details about components of the project
    F{{versions}} detatils of project versions
}
public type Project record {
    string resource_path;
    string id;
    string key;
    string name;
    string description;
    string leadName;
    string projectTypeKey;
    AvatarUrls avatarUrls;
    ProjectCategory projectCategory;
    IssueType[] issueTypes;
    ProjectComponentSummary[] components;
    ProjectVersion[] versions;
};

documentation{Represents jira project creation/update template.
    F{{key}} project key
    F{{name}} project name
    F{{description}} project description
    F{{projectTypeKey}} type of the project("software" or "business")
    F{{projectTemplateKey}} template key of the project
    F{{lead}} jira username of the project lead
    F{{url}} url for the project
    F{{assigneeType}} type of assignee of the project ("PROJECT_LEAD" or "UNASSIGNED")
    F{{avatarId}} avatar for the new project
    F{{issueSecurityScheme}} issue security scheme id
    F{{permissionScheme}} premission scheme id
    F{{notificationScheme}} notification scheme id
    F{{categoryId}} project category id
}
public type ProjectRequest record {
    string key;
    string name;
    string projectTypeKey;
    string projectTemplateKey;
    string description;
    string lead;
    string url;
    string assigneeType;
    string avatarId;
    string issueSecurityScheme;
    string permissionScheme;
    string notificationScheme;
    string categoryId;
};

documentation{Represents a summary of a jira project component.
    F{{resource_path}} API resource url
    F{{id}} project component Id
    F{{name}} project component name
    F{{description}} project component description
}
public type ProjectComponentSummary record {
    string resource_path;
    string id;
    string name;
    string description;
};

documentation{Represents a detailed jira project component.
    F{{resource_path}} API resource url
    F{{id}} project component Id
    F{{name}} project component name
    F{{description}} project component description
    F{{leadName}} jira username of project component lead
    F{{assigneeName}} jira username of component assignee
    F{{assigneeType}} type of assignee ("PROJECT_DEFAULT", "COMPONENT_LEAD", "PROJECT_LEAD" or "UNASSIGNED")
    F{{realAssigneeName}} jira username of the project component real assignee
    F{{realAssigneeType}} type of real assignee ("PROJECT_DEFAULT", "COMPONENT_LEAD", "PROJECT_LEAD" or "UNASSIGNED")
    F{{project}} key of the related project
    F{{projectId}} id of the related project
}
public type ProjectComponent record {
    string resource_path;
    string id;
    string name;
    string description;
    string leadName;
    string assigneeName;
    string assigneeType;
    string realAssigneeName;
    string realAssigneeType;
    string project;
    string projectId;
};

documentation{Represents jira project component creation template object.
    F{{name}} project component name
    F{{description}} project component description
    F{{leadUserName}} jira username of project component lead
    F{{assigneeType}} type of assignee ("PROJECT_DEFAULT", "COMPONENT_LEAD", "PROJECT_LEAD" or "UNASSIGNED")
    F{{project}} key of the related project
    F{{projectId}} id of the related project
}
public type ProjectComponentRequest record {
    string name;
    string description;
    string leadUserName;
    string assigneeType;
    string project;
    string projectId;
};

documentation{Represents a detailed jira project category.
    F{{resource_path}} API resource url
    F{{id}} project category Id
    F{{name}} project category name
    F{{description}} project category description
}
public type ProjectCategory record {
    string resource_path;
    string id;
    string name;
    string description;
};

documentation{Represents jira project category creation template object.
    F{{name}} project category name
    F{{description}} project category description
}
public type ProjectCategoryRequest record {
    string name;
    string description;
};

documentation{Represents a jira project role (i.e. Developers;Users etc.).
    F{{resource_path}} API resource url
    F{{name}} project role name
    F{{description}} project role description
    F{{actors}} the set of jira users and groups assigned to the project role
}
public type ProjectRole record {
    string resource_path;
    string name;
    string description;
    Actor[] actors;
};

documentation{Represent an assignee for a given project role (An actor can be either a jira user or a group)
    F{{id}} id of the actor(user/group)
    F{{name}} name of the actor
    F{{displayName}} display name of the actor
    F{{^"type"}} type of the actor
}
public type Actor record {
    string id;
    string name;
    string displayName;
    string ^"type";
};

documentation{Represents a jira issue type status related to a jira project.)
    F{{resource_path}} API resource url
    F{{name}} related issue type name
    F{{id}} related issue type id
    F{{statuses}} project status details related to the issue type
}
public type ProjectStatus record {
    string resource_path;
    string name;
    string id;
    json statuses;
};

documentation{Represents a jira user.
    F{{resource_path}} API resource url
    F{{key}} key of the user
    F{{name}} name of the user
    F{{displayName}} display name of the user
    F{{emailAddress}} email address of the user
    F{{avatarUrls}} avatar urls of the user
    F{{active}} boolean field represent whether the user is active
    F{{timeZone}} time zone related to the user
}
public type User record {
    string resource_path;
    string key;
    string name;
    string displayName;
    string emailAddress;
    json avatarUrls;
    boolean active;
    string timeZone;
    string locale;
};

documentation{Represents a jira issue type.
    F{{resource_path}} API resource url
    F{{id}} issue type id
    F{{name}} issue type name
    F{{description}} issue type description
    F{{iconUrl}} url of the issue type icon
}
public type IssueType record {
    string resource_path;
    string id;
    string name;
    string description;
    string iconUrl;
    string avatarId;
};

documentation{Represents a jira project version.
    F{{resource_path}} API resource url
    F{{id}} project version id
    F{{name}} project version name
    F{{archived}} boolean field which indicates whether the version is archived
    F{{released}} boolean field which indicates whether the version is released
    F{{releaseDate}} release date of the project version
    F{{overdue}} boolean field which indicates whether the version is overdue
    F{{userReleaseDate}} user release date of the project version
    F{{projectId}} id of the related project
}
public type ProjectVersion record {
    string resource_path;
    string id;
    string name;
    boolean archived;
    boolean released;
    string releaseDate;
    boolean overdue;
    string userReleaseDate;
    string projectId;
};

documentation{Represents a set of avatar Urls related to a jira entity.
    F{{^"16x16"}} avatar url icon of size 16x16
    F{{^"24x24"}} avatar url icon of size 24x24
    F{{^"32x32"}} avatar url icon of size 32x32
    F{{^"48x48"}} avatar url icon of size 48x48
}
public type AvatarUrls record {
    string ^"16x16";
    string ^"24x24";
    string ^"32x32";
    string ^"48x48";
};

documentation{Represents a jira issue.
    F{{resource_path}} API resource url
    F{{id}} issue Id
    F{{key}} issue key
    F{{summary}} summary of the issue
    F{{priorityId}} issue priority Id
    F{{resolutionId}} issue resolution Id
    F{{statusId}} issue status Id
    F{{creatorName}} jira username of the issue creator
    F{{assigneeName}} jira username of the issue assignee
    F{{reporterName}} jira username of the issue reporter
    F{{createdDate}} created date of the issue
    F{{dueDate}} due date of the issue
    F{{timespent}} assigned time spent for the issue
    F{{issueType}} type of the jira issue
    F{{parent}} parent issue of the issue
    F{{project}} represent summarized details of the project which the issue is related to
    F{{customFields}} customly created fields which contain issue related information
}
public type Issue record {
    string resource_path;
    string id;
    string key;
    string summary;
    string priorityId;
    string resolutionId;
    string statusId;
    string creatorName;
    string assigneeName;
    string reporterName;
    string createdDate;
    string dueDate;
    string timespent;
    string resolutionDate;
    string aggregatetimespent;
    IssueType issueType;
    IssueSummary parent;
    ProjectSummary project;
    IssueComment[] comments = [];
    json[] customFields = [];
};

documentation{Represents record of jira issue creation template.
    F{{key}} issue key
    F{{summary}} summary of the issue
    F{{issueTypeId}} Id of the issue type for the new issue
    F{{projectId}} Id of the project related to the new issue
    F{{parentIssueKey}} issue key of parent of the new issue
    F{{assigneeName}} jira username of the issue assignee
    F{{dueDate}} due date of the issue
}
public type IssueRequest record {
    string key;
    string summary;
    string issueTypeId;
    string projectId;
    string parentIssueKey;
    string assigneeName;
    string dueDate;
};

documentation{Represents a jira issue.
    F{{resource_path}} API resource url
    F{{id}} issue Id
    F{{key}} issue key
    F{{priorityId}} issue priority Id
    F{{statusId}} issue status Id
    F{{issueType}} type of the jira issue
}
public type IssueSummary record {
    string resource_path;
    string id;
    string key;
    string priorityId;
    string statusId;
    IssueType issueType;
};

documentation{Represent Jira Connector based errors.
    F{{^"type"}} type of the error (HTTP error,server error etc.)
    F{{message}} error message
    F{{jiraServerErrorLog}} error log returned by the jira server, for "server error" type
    F{{cause}} cause for the error
}
public type JiraConnectorError record {
    string message;
    error? cause;
    string ^"type";
    json jiraServerErrorLog;
};

documentation{Represents record of jira issue comment.
    F{{id}} issue id
    F{{authorName}} Authors name of comment
    F{{authorKey}} Authors key
    F{{body}} Body of comment
    F{{updatedDate}} Date of creation of comment
}
public type IssueComment record {
    string id;
    string authorName;
    string authorKey;
    string body;
    string updatedDate;
};

documentation{Record to hold info for creating an issue link. In Jira title and then the summary is displayed. It is
crossed out if the status resolved is true. If 'relationship' is not stated then remote link is used. Mandatory fields 
below are marked with *.

    F{{issue_id}}* id (KEY-XXX) of issue that this link will be assoc with
    F{{global_id}} id
    F{{url}}* Url of remote link
    F{{title}}* Title of the remote link
    F{{summary}}* Summary of the link
    F{{application_type}} application type 
    F{{application_name}} name of application linking to
    F{{relationship}} eg 'causes'. If not stated then remote link is assumed
    F{{icon_url}} url of the icon to be displayed on Jira screen for link
    F{{icon_title}} title of icon for this link
    F{{resolved}} Is this linked issue resolved or not (true/false). Default to false.
    F{{status_icon_url}} url of the icon to be used to display the status
    F{{status_icon_title}} title of the icon to be used to display the status
    F{{status_icon_link}} Link to the closed issue
}
public type IssueLinkRequest record {
    string issue_id;
    string global_id;
    string url;
    string title;
    string summary;
    string application_type;
    string application_name;
    string relationship;
    string icon_url;
    string icon_title;
    boolean resolved;
    string status_icon_url;
    string status_icon_title;
    string status_icon_link;
    !...
};


