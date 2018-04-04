// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type FixedStruct struct {
	_io *kaitai.Stream
	_root *FixedStruct
	_parent interface{}
	_f_hdr bool
	hdr *FixedStruct_Header
}

func (this *FixedStruct) Read(io *kaitai.Stream, parent interface{}, root *FixedStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *FixedStruct) Hdr() (v *FixedStruct_Header, err error) {
	if (this._f_hdr) {
		return this.hdr, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64(0), io.SeekStart)
	if err != nil {
		return nil, err
	}
	tmp1 := new(FixedStruct_Header)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return nil, err
	}
	this.hdr = tmp1
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_hdr = true
	return this.hdr, nil
}
type FixedStruct_Header struct {
	Magic1 []byte
	Uint8 uint8
	Sint8 int8
	MagicUint []byte
	Uint16 uint16
	Uint32 uint32
	Uint64 uint64
	MagicSint []byte
	Sint16 int16
	Sint32 int32
	Sint64 int64
	MagicUintLe []byte
	Uint16le uint16
	Uint32le uint32
	Uint64le uint64
	MagicSintLe []byte
	Sint16le int16
	Sint32le int32
	Sint64le int64
	MagicUintBe []byte
	Uint16be uint16
	Uint32be uint32
	Uint64be uint64
	MagicSintBe []byte
	Sint16be int16
	Sint32be int32
	Sint64be int64
	_io *kaitai.Stream
	_root *FixedStruct
	_parent *FixedStruct
}

func (this *FixedStruct_Header) Read(io *kaitai.Stream, parent *FixedStruct, root *FixedStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.Magic1 = this._io.ensureFixedContents("\x50\x41\x43\x4B\x2D\x31");
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
	this.MagicUint = this._io.ensureFixedContents("\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46");
	tmp4, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16 = tmp4
	tmp5, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32 = tmp5
	tmp6, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64 = tmp6
	this.MagicSint = this._io.ensureFixedContents("\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46");
	tmp7, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16 = tmp7
	tmp8, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32 = tmp8
	tmp9, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64 = tmp9
	this.MagicUintLe = this._io.ensureFixedContents("\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45");
	tmp10, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16le = tmp10
	tmp11, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32le = tmp11
	tmp12, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64le = tmp12
	this.MagicSintLe = this._io.ensureFixedContents("\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45");
	tmp13, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16le = tmp13
	tmp14, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32le = tmp14
	tmp15, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64le = tmp15
	this.MagicUintBe = this._io.ensureFixedContents("\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45");
	tmp16, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.Uint16be = tmp16
	tmp17, err := this._io.ReadU4be()
	if err != nil {
		return err
	}
	this.Uint32be = tmp17
	tmp18, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.Uint64be = tmp18
	this.MagicSintBe = this._io.ensureFixedContents("\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45");
	tmp19, err := this._io.ReadS2be()
	if err != nil {
		return err
	}
	this.Sint16be = tmp19
	tmp20, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.Sint32be = tmp20
	tmp21, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.Sint64be = tmp21
	return err
}
