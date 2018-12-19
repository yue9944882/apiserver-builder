// +k8s:deepcopy-gen=package,register
package types

import (
	"k8s.io/apimachinery/pkg/runtime/schema"
)

var (
	GroupVersion = schema.GroupVersion{
		Group: "examples.k8s.io",
		Version: "v1",
	}
)
