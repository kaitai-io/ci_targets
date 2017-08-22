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

	for !this._io.EOF() {
		tmp1 := new(DefaultEndianExprException_Doc)
		err = tmp1.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Docs = append(this.Docs, tmp1)
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

	tmp2, err := this._io.ReadBytes(int(2))
	if err != nil {
		return err
	}
	this.Indicator = tmp2
	tmp3 := new(DefaultEndianExprException_Doc_MainObj)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Main = tmp3
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

	tmp4, err := this._io.ReadU4()
	if err != nil {
		return err
	}
	this.SomeInt = tmp4
	tmp5, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.SomeIntBe = tmp5
	tmp6, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.SomeIntLe = tmp6
	return err
}
