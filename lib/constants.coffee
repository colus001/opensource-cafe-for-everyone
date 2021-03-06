@SHORT_ID_LENGTH = 6

@DEFAULT_QUERY_OPTIONS =
  sort:
    score: -1
    comments: -1
    createdAt: -1

@SCHEMA_HELPER =
  SHORT_ID:
    type: String
    label: 'Short ID'
    regEx: /^[0-9A-Za-z]{6}$/
  ID:
    type: String
    label: "ID"
    regEx: SimpleSchema.RegEx.Id
  EMAIL_REGEX: /^([0-9a-zA-Z]([+-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/
