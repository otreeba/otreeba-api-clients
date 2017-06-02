# coding: utf-8

"""
    Otreeba Open Cannabis API

    This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).

    OpenAPI spec version: 1.0.0
    Contact: api@otreeba.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from pprint import pformat
from six import iteritems
import re


class Study(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self, name=None, year=None, doi=None, pub_med_id=None, slug=None, key_findings=None, conditions=None, created_at=None, updated_at=None):
        """
        Study - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'name': 'str',
            'year': 'int',
            'doi': 'str',
            'pub_med_id': 'str',
            'slug': 'str',
            'key_findings': 'str',
            'conditions': 'list[Condition]',
            'created_at': 'datetime',
            'updated_at': 'datetime'
        }

        self.attribute_map = {
            'name': 'name',
            'year': 'year',
            'doi': 'doi',
            'pub_med_id': 'pubMedId',
            'slug': 'slug',
            'key_findings': 'keyFindings',
            'conditions': 'conditions',
            'created_at': 'createdAt',
            'updated_at': 'updatedAt'
        }

        self._name = name
        self._year = year
        self._doi = doi
        self._pub_med_id = pub_med_id
        self._slug = slug
        self._key_findings = key_findings
        self._conditions = conditions
        self._created_at = created_at
        self._updated_at = updated_at

    @property
    def name(self):
        """
        Gets the name of this Study.
        Name of the study.

        :return: The name of this Study.
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """
        Sets the name of this Study.
        Name of the study.

        :param name: The name of this Study.
        :type: str
        """
        if name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")

        self._name = name

    @property
    def year(self):
        """
        Gets the year of this Study.
        Year of the study.

        :return: The year of this Study.
        :rtype: int
        """
        return self._year

    @year.setter
    def year(self, year):
        """
        Sets the year of this Study.
        Year of the study.

        :param year: The year of this Study.
        :type: int
        """

        self._year = year

    @property
    def doi(self):
        """
        Gets the doi of this Study.
        Digital Object Identifier for the study.

        :return: The doi of this Study.
        :rtype: str
        """
        return self._doi

    @doi.setter
    def doi(self, doi):
        """
        Sets the doi of this Study.
        Digital Object Identifier for the study.

        :param doi: The doi of this Study.
        :type: str
        """

        self._doi = doi

    @property
    def pub_med_id(self):
        """
        Gets the pub_med_id of this Study.
        PubMed ID for the study.

        :return: The pub_med_id of this Study.
        :rtype: str
        """
        return self._pub_med_id

    @pub_med_id.setter
    def pub_med_id(self, pub_med_id):
        """
        Sets the pub_med_id of this Study.
        PubMed ID for the study.

        :param pub_med_id: The pub_med_id of this Study.
        :type: str
        """

        self._pub_med_id = pub_med_id

    @property
    def slug(self):
        """
        Gets the slug of this Study.
        Slug based on the study name.

        :return: The slug of this Study.
        :rtype: str
        """
        return self._slug

    @slug.setter
    def slug(self, slug):
        """
        Sets the slug of this Study.
        Slug based on the study name.

        :param slug: The slug of this Study.
        :type: str
        """

        self._slug = slug

    @property
    def key_findings(self):
        """
        Gets the key_findings of this Study.
        Key findings for the study.

        :return: The key_findings of this Study.
        :rtype: str
        """
        return self._key_findings

    @key_findings.setter
    def key_findings(self, key_findings):
        """
        Sets the key_findings of this Study.
        Key findings for the study.

        :param key_findings: The key_findings of this Study.
        :type: str
        """

        self._key_findings = key_findings

    @property
    def conditions(self):
        """
        Gets the conditions of this Study.

        :return: The conditions of this Study.
        :rtype: list[Condition]
        """
        return self._conditions

    @conditions.setter
    def conditions(self, conditions):
        """
        Sets the conditions of this Study.

        :param conditions: The conditions of this Study.
        :type: list[Condition]
        """

        self._conditions = conditions

    @property
    def created_at(self):
        """
        Gets the created_at of this Study.
        Date and time record was created, UTC.

        :return: The created_at of this Study.
        :rtype: datetime
        """
        return self._created_at

    @created_at.setter
    def created_at(self, created_at):
        """
        Sets the created_at of this Study.
        Date and time record was created, UTC.

        :param created_at: The created_at of this Study.
        :type: datetime
        """

        self._created_at = created_at

    @property
    def updated_at(self):
        """
        Gets the updated_at of this Study.
        Date and time record was updated, UTC.

        :return: The updated_at of this Study.
        :rtype: datetime
        """
        return self._updated_at

    @updated_at.setter
    def updated_at(self, updated_at):
        """
        Sets the updated_at of this Study.
        Date and time record was updated, UTC.

        :param updated_at: The updated_at of this Study.
        :type: datetime
        """

        self._updated_at = updated_at

    def to_dict(self):
        """
        Returns the model properties as a dict
        """
        result = {}

        for attr, _ in iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """
        Returns the string representation of the model
        """
        return pformat(self.to_dict())

    def __repr__(self):
        """
        For `print` and `pprint`
        """
        return self.to_str()

    def __eq__(self, other):
        """
        Returns true if both objects are equal
        """
        if not isinstance(other, Study):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """
        Returns true if both objects are not equal
        """
        return not self == other
