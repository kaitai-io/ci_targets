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

	tmp2, err := this._io.ReadBytes(int(6))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this.Magic1 = tmp2
	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Uint8 = tmp3
	tmp4, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.Sint8 = tmp4
	tmp5, err := this._io.ReadBytes(int(10))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this.MagicUint = tmp5
	tmp6, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16 = uint16(tmp6)
	tmp7, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32 = uint32(tmp7)
	tmp8, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64 = uint64(tmp8)
	tmp9, err := this._io.ReadBytes(int(10))
	if err != nil {
		return err
	}
	tmp9 = tmp9
	this.MagicSint = tmp9
	tmp10, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16 = int16(tmp10)
	tmp11, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32 = int32(tmp11)
	tmp12, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64 = int64(tmp12)
	tmp13, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	tmp13 = tmp13
	this.MagicUintLe = tmp13
	tmp14, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16le = uint16(tmp14)
	tmp15, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32le = uint32(tmp15)
	tmp16, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64le = uint64(tmp16)
	tmp17, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	tmp17 = tmp17
	this.MagicSintLe = tmp17
	tmp18, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16le = int16(tmp18)
	tmp19, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32le = int32(tmp19)
	tmp20, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64le = int64(tmp20)
	tmp21, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	tmp21 = tmp21
	this.MagicUintBe = tmp21
	tmp22, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.Uint16be = uint16(tmp22)
	tmp23, err := this._io.ReadU4be()
	if err != nil {
		return err
	}
	this.Uint32be = uint32(tmp23)
	tmp24, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.Uint64be = uint64(tmp24)
	tmp25, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	tmp25 = tmp25
	this.MagicSintBe = tmp25
	tmp26, err := this._io.ReadS2be()
	if err != nil {
		return err
	}
	this.Sint16be = int16(tmp26)
	tmp27, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.Sint32be = int32(tmp27)
	tmp28, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.Sint64be = int64(tmp28)
	return err
}
