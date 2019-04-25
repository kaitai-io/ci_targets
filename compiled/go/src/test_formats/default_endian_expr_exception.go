// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type DefaultEndianExprException struct {
	Docs []*DefaultEndianExprException_Doc
	_io *kaitai.Stream
	_root *DefaultEndianExprException
	_parent interface{}
}

func (this *DefaultEndianExprException) Read(io *kaitai.Stream, parent interface{}, root *DefaultEndianExprException) (err error) {
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
		tmp2 := new(DefaultEndianExprException_Doc)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Docs = append(this.Docs, tmp2)
	}
	return err
}
type DefaultEndianExprException_Doc struct {
	Indicator []byte
	Main *DefaultEndianExprException_Doc_MainObj
	_io *kaitai.Stream
	_root *DefaultEndianExprException
	_parent *DefaultEndianExprException
}

func (this *DefaultEndianExprException_Doc) Read(io *kaitai.Stream, parent *DefaultEndianExprException, root *DefaultEndianExprException) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(2))
	if err != nil {
		return err
	}
	this.Indicator = tmp3
	tmp4 := new(DefaultEndianExprException_Doc_MainObj)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Main = tmp4
	return err
}
type DefaultEndianExprException_Doc_MainObj struct {
	SomeInt uint32
	SomeIntBe uint16
	SomeIntLe uint16
	_io *kaitai.Stream
	_root *DefaultEndianExprException
	_parent *DefaultEndianExprException_Doc
}

func (this *DefaultEndianExprException_Doc_MainObj) Read(io *kaitai.Stream, parent *DefaultEndianExprException_Doc, root *DefaultEndianExprException) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadU4()
	if err != nil {
		return err
	}
	this.SomeInt = tmp5
	tmp6, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.SomeIntBe = tmp6
	tmp7, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.SomeIntLe = tmp7
	return err
}
