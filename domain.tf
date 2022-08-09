provider "oci" {
 version=">=3.11"
 tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaasg7dmeaivai6jirpcbl23ms3z4aohftxghilvru5b2eceujefw6a"
 user_ocid="ocid1.user.oc1..aaaaaaaauzkjmfix2h4qcb5ywrvlfstudooikt6l3u5vv7vvt5c7cib5oh4q"
 fingerprint="86:0c:41:24:38:64:53:c4:9b:59:d6:66:3c:36:dd:5e"
 private_key_path="~/.oci/apiprivatekey.pem"
 region="us-ashburn-1"
}


data "oci_identity_availability_domains" "test_availability_domains" {
    #Required
    compartment_id ="ocid1.tenancy.oc1..aaaaaaaasg7dmeaivai6jirpcbl23ms3z4aohftxghilvru5b2eceujefw6a"
}


output all_domains {
 value= "${data.oci_identity_availability_domains.test_availability_domains.availability_domains}"
}
