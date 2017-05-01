// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
import "io"
import "golang.org/x/text/encoding/charmap"
import "golang.org/x/text/encoding/traditionalchinese"
import "golang.org/x/text/encoding/japanese"

var _ = io.SeekStart
var _ = charmap.CodePage437
var _ = japanese.ShiftJIS
var _ = traditionalchinese.Big5

type NestedTypes2 struct {
	One *NestedTypes2_SubtypeA
	Two *NestedTypes2_SubtypeB
	_io *kaitai.Stream
	_root *NestedTypes2
	_parent interface{}
}

func (this *NestedTypes2) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(NestedTypes2_SubtypeA)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.One = tmp1
	tmp2 := new(NestedTypes2_SubtypeB)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Two = tmp2
	return err
}
type NestedTypes2_SubtypeA struct {
	TypedAtRoot *NestedTypes2_SubtypeB
	TypedHere1 *NestedTypes2_SubtypeA_SubtypeC
	TypedHere2 *NestedTypes2_SubtypeA_SubtypeCc
	_io *kaitai.Stream
	_root *NestedTypes2
	_parent *NestedTypes2
}

func (this *NestedTypes2_SubtypeA) Read(io *kaitai.Stream, parent *NestedTypes2, root *NestedTypes2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3 := new(NestedTypes2_SubtypeB)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TypedAtRoot = tmp3
	tmp4 := new(NestedTypes2_SubtypeA_SubtypeC)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TypedHere1 = tmp4
	tmp5 := new(NestedTypes2_SubtypeA_SubtypeCc)
	err = tmp5.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TypedHere2 = tmp5
	return err
}
type NestedTypes2_SubtypeA_SubtypeC struct {
	ValueC int8
	TypedHere *NestedTypes2_SubtypeA_SubtypeC_SubtypeD
	TypedParent *NestedTypes2_SubtypeA_SubtypeCc
	TypedRoot *NestedTypes2_SubtypeB
	_io *kaitai.Stream
	_root *NestedTypes2
	_parent *NestedTypes2_SubtypeA
}

func (this *NestedTypes2_SubtypeA_SubtypeC) Read(io *kaitai.Stream, parent *NestedTypes2_SubtypeA, root *NestedTypes2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueC = tmp6
	tmp7 := new(NestedTypes2_SubtypeA_SubtypeC_SubtypeD)
	err = tmp7.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TypedHere = tmp7
	tmp8 := new(NestedTypes2_SubtypeA_SubtypeCc)
	err = tmp8.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TypedParent = tmp8
	tmp9 := new(NestedTypes2_SubtypeB)
	err = tmp9.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TypedRoot = tmp9
	return err
}
type NestedTypes2_SubtypeA_SubtypeC_SubtypeD struct {
	ValueD int8
	_io *kaitai.Stream
	_root *NestedTypes2
	_parent *NestedTypes2_SubtypeA_SubtypeC
}

func (this *NestedTypes2_SubtypeA_SubtypeC_SubtypeD) Read(io *kaitai.Stream, parent *NestedTypes2_SubtypeA_SubtypeC, root *NestedTypes2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp10, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueD = tmp10
	return err
}
type NestedTypes2_SubtypeA_SubtypeCc struct {
	ValueCc int8
	_io *kaitai.Stream
	_root *NestedTypes2
	_parent interface{}
}

func (this *NestedTypes2_SubtypeA_SubtypeCc) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp11, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueCc = tmp11
	return err
}
type NestedTypes2_SubtypeB struct {
	ValueB int8
	_io *kaitai.Stream
	_root *NestedTypes2
	_parent interface{}
}

func (this *NestedTypes2_SubtypeB) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp12, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueB = tmp12
	return err
}
