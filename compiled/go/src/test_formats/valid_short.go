// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidShort struct {
	Magic1 []byte
	Uint8 uint8
	Sint8 int8
	MagicUint string
	Uint16 uint16
	Uint32 uint32
	Uint64 uint64
	MagicSint string
	Sint16 int16
	Sint32 int32
	Sint64 int64
	_io *kaitai.Stream
	_root *ValidShort
	_parent interface{}
}

func (this *ValidShort) Read(io *kaitai.Stream, parent interface{}, root *ValidShort) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(6))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Magic1 = tmp1
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Uint8 = tmp2
	tmp3, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.Sint8 = tmp3
	tmp4, err := this._io.ReadBytes(int(10))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this.MagicUint = string(tmp4)
	tmp5, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16 = uint16(tmp5)
	tmp6, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32 = uint32(tmp6)
	tmp7, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64 = uint64(tmp7)
	tmp8, err := this._io.ReadBytes(int(10))
	if err != nil {
		return err
	}
	tmp8 = tmp8
	this.MagicSint = string(tmp8)
	tmp9, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16 = int16(tmp9)
	tmp10, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32 = int32(tmp10)
	tmp11, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64 = int64(tmp11)
	return err
}
