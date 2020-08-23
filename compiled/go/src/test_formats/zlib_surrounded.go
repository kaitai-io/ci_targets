// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ZlibSurrounded struct {
	Pre []byte
	Zlib *ZlibSurrounded_Inflated
	Post []byte
	_io *kaitai.Stream
	_root *ZlibSurrounded
	_parent interface{}
	_raw_Zlib []byte
	_raw__raw_Zlib []byte
}
func NewZlibSurrounded() *ZlibSurrounded {
	return &ZlibSurrounded{
	}
}

func (this *ZlibSurrounded) Read(io *kaitai.Stream, parent interface{}, root *ZlibSurrounded) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Pre = tmp1
	tmp2, err := this._io.ReadBytes(int(12))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this._raw__raw_Zlib = tmp2
	tmp3, err := kaitai.ProcessZlib(this._raw__raw_Zlib)
	if err != nil {
		return err
	}
	this._raw_Zlib = tmp3
	_io__raw_Zlib := kaitai.NewStream(bytes.NewReader(this._raw_Zlib))
	tmp4 := NewZlibSurrounded_Inflated()
	err = tmp4.Read(_io__raw_Zlib, this, this._root)
	if err != nil {
		return err
	}
	this.Zlib = tmp4
	tmp5, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this.Post = tmp5
	return err
}
type ZlibSurrounded_Inflated struct {
	Num int32
	_io *kaitai.Stream
	_root *ZlibSurrounded
	_parent *ZlibSurrounded
}
func NewZlibSurrounded_Inflated() *ZlibSurrounded_Inflated {
	return &ZlibSurrounded_Inflated{
	}
}

func (this *ZlibSurrounded_Inflated) Read(io *kaitai.Stream, parent *ZlibSurrounded, root *ZlibSurrounded) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Num = int32(tmp6)
	return err
}
