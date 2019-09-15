// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
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
}

func (this *DefaultEndianExprInherited_Doc_MainObj) Read(io *kaitai.Stream, parent *DefaultEndianExprInherited_Doc, root *DefaultEndianExprInherited) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5 := new(DefaultEndianExprInherited_Doc_MainObj_SubObj)
	err = tmp5.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Insides = tmp5
	return err
}
type DefaultEndianExprInherited_Doc_MainObj_SubObj struct {
	SomeInt uint32
	More *DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj
	_io *kaitai.Stream
	_root *DefaultEndianExprInherited
	_parent *DefaultEndianExprInherited_Doc_MainObj
}

func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj) Read(io *kaitai.Stream, parent *DefaultEndianExprInherited_Doc_MainObj, root *DefaultEndianExprInherited) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadU4()
	if err != nil {
		return err
	}
	this.SomeInt = uint32(tmp6)
	tmp7 := new(DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj)
	err = tmp7.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.More = tmp7
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
}

func (this *DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) Read(io *kaitai.Stream, parent *DefaultEndianExprInherited_Doc_MainObj_SubObj, root *DefaultEndianExprInherited) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp8, err := this._io.ReadU2()
	if err != nil {
		return err
	}
	this.SomeInt1 = uint16(tmp8)
	tmp9, err := this._io.ReadU2()
	if err != nil {
		return err
	}
	this.SomeInt2 = uint16(tmp9)
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
	tmp10, err := this._io.ReadU4()
	if err != nil {
		return 0, err
	}
	this.someInst = tmp10
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return 0, err
	}
	this._f_someInst = true
	return this.someInst, nil
}
