package test

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestStub(t *testing.T) {
	a := "Hello"
	b := "Hello"

	assert.Equal(t, a, b, "The two words should be the same.")
}
