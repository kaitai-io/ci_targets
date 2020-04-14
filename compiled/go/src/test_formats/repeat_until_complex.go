// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RepeatUntilComplex struct {
	First []*RepeatUntilComplex_TypeU1
	Second []*RepeatUntilComplex_TypeU2
	Third []uint8
	_io *kaitai.Stream
	_root *RepeatUntilComplex
	_parent interface{}
}
func NewRepeatUntilComplex() *RepeatUntilComplex {
	return &RepeatUntilComplex{
	}
}

func (this *RepeatUntilComplex) Read(io *kaitai.Stream, parent interface{}, root *RepeatUntilComplex) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 1;; i++ {
		tmp1 := NewRepeatUntilComplex_TypeU1()
		err = tmp1.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		_it := tmp1
		this.First = append(this.First, _it)
		if _it.Count == 0 {
			break
		}
	}
	for i := 1;; i++ {
		tmp2 := NewRepeatUntilComplex_TypeU2()
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		_it := tmp2
		this.Second = append(this.Second, _it)
		if _it.Count == 0 {
			break
		}
	}
	for i := 1;; i++ {
		tmp3, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		_it := tmp3
		this.Third = append(this.Third, _it)
		if _it == 0 {
			break
		}
	}
	return err
}
type RepeatUntilComplex_TypeU1 struct {
	Count uint8
	Values []uint8
	_io *kaitai.Stream
	_root *RepeatUntilComplex
	_parent *RepeatUntilComplex
}
func NewRepeatUntilComplex_TypeU1() *RepeatUntilComplex_TypeU1 {
	return &RepeatUntilComplex_TypeU1{
	}
}

func (this *RepeatUntilComplex_TypeU1) Read(io *kaitai.Stream, parent *RepeatUntilComplex, root *RepeatUntilComplex) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Count = tmp4
	this.Values = make([]uint8, this.Count)
	for i := range this.Values {
		tmp5, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Values[i] = tmp5
	}
	return err
}
type RepeatUntilComplex_TypeU2 struct {
	Count uint16
	Values []uint16
	_io *kaitai.Stream
	_root *RepeatUntilComplex
	_parent *RepeatUntilComplex
}
func NewRepeatUntilComplex_TypeU2() *RepeatUntilComplex_TypeU2 {
	return &RepeatUntilComplex_TypeU2{
	}
}

func (this *RepeatUntilComplex_TypeU2) Read(io *kaitai.Stream, parent *RepeatUntilComplex, root *RepeatUntilComplex) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Count = uint16(tmp6)
	this.Values = make([]uint16, this.Count)
	for i := range this.Values {
		tmp7, err := this._io.ReadU2le()
		if err != nil {
			return err
		}
		this.Values[i] = tmp7
	}
	return err
}
