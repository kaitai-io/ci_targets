// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
	"errors"
)

type FixedContents struct {
	Normal []byte
	HighBit8 []byte
	_io *kaitai.Stream
	_root *FixedContents
	_parent interface{}
}

func (this *FixedContents) Read(io *kaitai.Stream, parent interface{}, root *FixedContents) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.Normal, err = this._io.ReadBytes(6)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.Normal, []uint8{80, 65, 67, 75, 45, 49}) {
		return errors.New("Unexpected fixed contents")
	}
	this.HighBit8, err = this._io.ReadBytes(2)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.HighBit8, []uint8{255, 255}) {
		return errors.New("Unexpected fixed contents")
	}
	return err
}
