// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct ProcessCoerceUsertype2 {
    pub _root: SharedType<ProcessCoerceUsertype2>,
    pub _parent: SharedType<ProcessCoerceUsertype2>,
    pub _self: SharedType<Self>,
    records: RefCell<Vec<OptRc<ProcessCoerceUsertype2_Record>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ProcessCoerceUsertype2 {
    type Root = ProcessCoerceUsertype2;
    type Parent = ProcessCoerceUsertype2;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.records.borrow_mut() = Vec::new();
        let l_records = 2;
        for _i in 0..l_records {
            let t = Self::read_into::<_, ProcessCoerceUsertype2_Record>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.records.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl ProcessCoerceUsertype2 {
}
impl ProcessCoerceUsertype2 {
    pub fn records(&self) -> Ref<Vec<OptRc<ProcessCoerceUsertype2_Record>>> {
        self.records.borrow()
    }
}
impl ProcessCoerceUsertype2 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessCoerceUsertype2_Foo {
    pub _root: SharedType<ProcessCoerceUsertype2>,
    pub _parent: SharedType<ProcessCoerceUsertype2_Record>,
    pub _self: SharedType<Self>,
    value: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ProcessCoerceUsertype2_Foo {
    type Root = ProcessCoerceUsertype2;
    type Parent = ProcessCoerceUsertype2_Record;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.value.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl ProcessCoerceUsertype2_Foo {
}
impl ProcessCoerceUsertype2_Foo {
    pub fn value(&self) -> Ref<u32> {
        self.value.borrow()
    }
}
impl ProcessCoerceUsertype2_Foo {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessCoerceUsertype2_Record {
    pub _root: SharedType<ProcessCoerceUsertype2>,
    pub _parent: SharedType<ProcessCoerceUsertype2>,
    pub _self: SharedType<Self>,
    flag: RefCell<u8>,
    buf_unproc: RefCell<OptRc<ProcessCoerceUsertype2_Foo>>,
    buf_proc: RefCell<OptRc<ProcessCoerceUsertype2_Foo>>,
    _io: RefCell<BytesReader>,
    buf_proc_raw: RefCell<Vec<u8>>,
    buf_proc_raw_raw: RefCell<Vec<u8>>,
    f_buf: Cell<bool>,
    buf: RefCell<OptRc<ProcessCoerceUsertype2_Foo>>,
}
impl KStruct for ProcessCoerceUsertype2_Record {
    type Root = ProcessCoerceUsertype2;
    type Parent = ProcessCoerceUsertype2;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.flag.borrow_mut() = _io.read_u1()?.into();
        if ((*self_rc.flag() as u8) == (0 as u8)) {
            let t = Self::read_into::<_, ProcessCoerceUsertype2_Foo>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            *self_rc.buf_unproc.borrow_mut() = t;
        }
        if ((*self_rc.flag() as u8) != (0 as u8)) {
            *self_rc.buf_proc_raw_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
            *self_rc.buf_proc_raw.borrow_mut() = process_xor_one(&self_rc.buf_proc_raw_raw.borrow(), 170);
            let buf_proc_raw = self_rc.buf_proc_raw.borrow();
            let _t_buf_proc_raw_io = BytesReader::from(buf_proc_raw.clone());
            let t = Self::read_into::<BytesReader, ProcessCoerceUsertype2_Foo>(&_t_buf_proc_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            *self_rc.buf_proc.borrow_mut() = t;
        }
        Ok(())
    }
}
impl ProcessCoerceUsertype2_Record {
    pub fn buf(
        &self
    ) -> KResult<Ref<OptRc<ProcessCoerceUsertype2_Foo>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_buf.get() {
            return Ok(self.buf.borrow());
        }
        *self.buf.borrow_mut() = if ((*self.flag() as u8) == (0 as u8)) { self.buf_unproc().clone() } else { self.buf_proc().clone() }.clone();
        Ok(self.buf.borrow())
    }
}
impl ProcessCoerceUsertype2_Record {
    pub fn flag(&self) -> Ref<u8> {
        self.flag.borrow()
    }
}
impl ProcessCoerceUsertype2_Record {
    pub fn buf_unproc(&self) -> Ref<OptRc<ProcessCoerceUsertype2_Foo>> {
        self.buf_unproc.borrow()
    }
}
impl ProcessCoerceUsertype2_Record {
    pub fn buf_proc(&self) -> Ref<OptRc<ProcessCoerceUsertype2_Foo>> {
        self.buf_proc.borrow()
    }
}
impl ProcessCoerceUsertype2_Record {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl ProcessCoerceUsertype2_Record {
    pub fn buf_proc_raw(&self) -> Ref<Vec<u8>> {
        self.buf_proc_raw.borrow()
    }
}
impl ProcessCoerceUsertype2_Record {
    pub fn buf_proc_raw_raw(&self) -> Ref<Vec<u8>> {
        self.buf_proc_raw_raw.borrow()
    }
}
