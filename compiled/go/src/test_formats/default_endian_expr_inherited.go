// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
	"io"
)

type DefaultEndianExprInherited struct {
	Docs []*DefaultEndianExprInherited_Doc
	_io *kaitai.Stream
	_root *DefaultEndianExprInherited
	_parent interface{}
}

func (this *DefaultEndianExprInherited) Read(io *kaitai.Stream, parent interface{}, root *DefaultEndianExprInherited) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for {
		tmp1, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp1 {
			break
		}
		tmp2 := new(DefaultEndianExprInherited_Doc)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Docs = append(this.Docs, tmp2)
	}
	return err
}
type DefaultEndianExprInherited_Doc struct {
	Indicator []byte
	Main *DefaultEndianExprInherited_Doc_MainObj
	_io *kaitai.Stream
	_root *DefaultEndianExprInherited
	_parent *DefaultEndianExprInherited
}

func (this *DefaultEndianExprInherited_Doc) Read(io *kaitai.Stream, parent *DefaultEndianExprInherited, root *DefaultEndianExprInherited) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(2))
	if err != nil {
		return err
	}
	this.Indicator = tmp3
	tmp4 := new(DefaultEndianExprInherited_Doc_MainObj)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Main = tmp4
	return err
}
type DefaultEndianExprInherited_Doc_MainObj struct {
	Insides *DefaultEndianExprInherited_Doc_MainObj_SubObj
	_io *kaitai.Stream
	_root *DefaultEndianExprInherited
	_parent *DefaultEndianExprInherited_Doc
	_is_le int
}

func (this *DefaultEndianExprInherited_Doc_MainObj) Read(io *kaitai.Stream, parent *DefaultEndianExprInherited_Doc, root *DefaultEndianExprInherited) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	switch (true) {
	case bytes.Equal(this._parent.Indicator, []uint8{73, 73}):
		this._is_le = int(1)
	default:
		this._is_le = int(0)
	}

	switch this._is_le {
	case 0:
		err = this._read_be()
	case 1:
		err = this._read_le()
	default:
		panic("undecided endianness")
	}
	return err
}

func (this *DefaultEndianExprInherited_Doc_MainObj) _read_le() (err error) {
	tmp5 := new(DefaultEndianExprInherited_Doc_MainObj_SubObj)
	err = tmp5.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Insides = tmp5
	return err
}

func (this *DefaultEndianExprInherited_Doc_MainObj) _read_be() (err error) {
	tmp6 := new(DefaultEndianExprInherited_Doc_MainObj_SubObj)
	err = tmp6.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Insides = tmp6
	return err
}
type DefaultEndianExprInherited_Doc_MainObj_SubObj struct {
	SomeInt uint32
	More *DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj
	_io *kaitai.Stream
	_root *DefaultEndianExprInherited
	_parent *DefaultEndianExprInherited_Doc_MainObj
	_is_le int
}

func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj) Read(io *kaitai.Stream, parent *DefaultEndianExprInherited_Doc_MainObj, root *DefaultEndianExprInherited) (err error) {
	this._io = io
	this._parent = parent
	this._root = root


	switch this._is_le {
	case 0:
		err = this._read_be()
	case 1:
		err = this._read_le()
	default:
		panic("undecided endianness")
	}
	return err
}

func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj) _read_le() (err error) {
	tmp7, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.SomeInt = uint32(tmp7)
	tmp8 := new(DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj)
	err = tmp8.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.More = tmp8
	return err
}

func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj) _read_be() (err error) {
	tmp9, err := this._io.ReadU4be()
	if err != nil {
		return err
	}
	this.SomeInt = uint32(tmp9)
	tmp10 := new(DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj)
	err = tmp10.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.More = tmp10
	return err
}
type DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj struct {
	SomeInt1 uint16
	SomeInt2 uint16
	_io *kaitai.Stream
	_root *DefaultEndianExprInherited
	_parent *DefaultEndianExprInherited_Doc_MainObj_SubObj
	_f_someInst bool
	someInst uint32
	_is_le int
}

func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) Read(io *kaitai.Stream, parent *DefaultEndianExprInherited_Doc_MainObj_SubObj, root *DefaultEndianExprInherited) (err error) {
	this._io = io
	this._parent = parent
	this._root = root


	switch this._is_le {
	case 0:
		err = this._read_be()
	case 1:
		err = this._read_le()
	default:
		panic("undecided endianness")
	}
	return err
}

func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) _read_le() (err error) {
	tmp11, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.SomeInt1 = uint16(tmp11)
	tmp12, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.SomeInt2 = uint16(tmp12)
	return err
}

func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) _read_be() (err error) {
	tmp13, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.SomeInt1 = uint16(tmp13)
	tmp14, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.SomeInt2 = uint16(tmp14)
	return err
}
func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) SomeInst() (v uint32, err error) {
	if (this._f_someInst) {
		return this.someInst, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return 0, err
	}
	_, err = this._io.Seek(int64(2), io.SeekStart)
	if err != nil {
		return 0, err
	}
	switch this._is_le {
	case 0:
		tmp15, err := this._io.ReadU4be()
		if err != nil {
			return 0, err
		}
		this.someInst = tmp15
	case 1:
		tmp16, err := this._io.ReadU4le()
		if err != nil {
			return 0, err
		}
		this.someInst = tmp16
	default:
		panic("undecided endianness")
	}
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return 0, err
	}
	this._f_someInst = true
	return this.someInst, nil
}
