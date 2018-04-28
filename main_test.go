package main

import (
	"github.com/stretchr/testify/assert"
	"testing"
	"github.com/joho/godotenv"
)

func TestStub(t *testing.T) {
	err := godotenv.Load()
        if err != nil {
		t.Error(err)
        }
	assert.Equal(t, GetGreeting(), "Hello world", "The two words should be the same.")
}
