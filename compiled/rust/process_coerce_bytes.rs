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
pub struct ProcessCoerceBytes {
    pub _root: SharedType<ProcessCoerceBytes>,
    pub _parent: SharedType<ProcessCoerceBytes>,
    pub _self: SharedType<Self>,
    records: RefCell<Vec<OptRc<ProcessCoerceBytes_Record>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ProcessCoerceBytes {
    type Root = ProcessCoerceBytes;
    type Parent = ProcessCoerceBytes;

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
            let t = Self::read_into::<_, ProcessCoerceBytes_Record>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.records.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl ProcessCoerceBytes {
}
impl ProcessCoerceBytes {
    pub fn records(&self) -> Ref<'_, Vec<OptRc<ProcessCoerceBytes_Record>>> {
        self.records.borrow()
    }
}
impl ProcessCoerceBytes {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessCoerceBytes_Record {
    pub _root: SharedType<ProcessCoerceBytes>,
    pub _parent: SharedType<ProcessCoerceBytes>,
    pub _self: SharedType<Self>,
    flag: RefCell<u8>,
    buf_unproc: RefCell<Vec<u8>>,
    buf_proc: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    buf_proc_raw: RefCell<Vec<u8>>,
    f_buf: Cell<bool>,
    buf: RefCell<Vec<u8>>,
}
impl KStruct for ProcessCoerceBytes_Record {
    type Root = ProcessCoerceBytes;
    type Parent = ProcessCoerceBytes;

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
            *self_rc.buf_unproc.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        }
        if ((*self_rc.flag() as u8) != (0 as u8)) {
            *self_rc.buf_proc_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
            *self_rc.buf_proc.borrow_mut() = process_xor_one(&self_rc.buf_proc_raw.borrow(), 170);
        }
        Ok(())
    }
}
impl ProcessCoerceBytes_Record {
    pub fn buf(
        &self
    ) -> KResult<Ref<'_, Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_buf.get() {
            return Ok(self.buf.borrow());
        }
        self.f_buf.set(true);
        *self.buf.borrow_mut() = if ((*self.flag() as u8) == (0 as u8)) { self.buf_unproc().to_vec() } else { self.buf_proc().to_vec() }.to_vec();
        Ok(self.buf.borrow())
    }
}
impl ProcessCoerceBytes_Record {
    pub fn flag(&self) -> Ref<'_, u8> {
        self.flag.borrow()
    }
}
impl ProcessCoerceBytes_Record {
    pub fn buf_unproc(&self) -> Ref<'_, Vec<u8>> {
        self.buf_unproc.borrow()
    }
}
impl ProcessCoerceBytes_Record {
    pub fn buf_proc(&self) -> Ref<'_, Vec<u8>> {
        self.buf_proc.borrow()
    }
}
impl ProcessCoerceBytes_Record {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ProcessCoerceBytes_Record {
    pub fn buf_proc_raw(&self) -> Ref<'_, Vec<u8>> {
        self.buf_proc_raw.borrow()
    }
}
