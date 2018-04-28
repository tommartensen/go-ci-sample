package test

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestStub(t *testing.T) {
	var a string = "Hello"
	var b string = "Hello"

	assert.Equal(t, a, b, "The two words should be the same.")
}
