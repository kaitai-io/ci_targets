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
pub struct InstanceInSized {
    pub _root: SharedType<InstanceInSized>,
    pub _parent: SharedType<InstanceInSized>,
    pub _self: SharedType<Self>,
    cont: RefCell<OptRc<InstanceInSized_Wrapper>>,
    _io: RefCell<BytesReader>,
    cont_raw: RefCell<Vec<u8>>,
}
impl KStruct for InstanceInSized {
    type Root = InstanceInSized;
    type Parent = InstanceInSized;

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
        *self_rc.cont_raw.borrow_mut() = _io.read_bytes(16 as usize)?.into();
        let cont_raw = self_rc.cont_raw.borrow();
        let _t_cont_raw_io = BytesReader::from(cont_raw.clone());
        let t = Self::read_into::<BytesReader, InstanceInSized_Wrapper>(&_t_cont_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.cont.borrow_mut() = t;
        Ok(())
    }
}
impl InstanceInSized {
}
impl InstanceInSized {
    pub fn cont(&self) -> Ref<'_, OptRc<InstanceInSized_Wrapper>> {
        self.cont.borrow()
    }
}
impl InstanceInSized {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl InstanceInSized {
    pub fn cont_raw(&self) -> Ref<'_, Vec<u8>> {
        self.cont_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceInSized_Bar {
    pub _root: SharedType<InstanceInSized>,
    pub _parent: SharedType<InstanceInSized_Wrapper>,
    pub _self: SharedType<Self>,
    seq_f: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_inst: Cell<bool>,
    inst: RefCell<Vec<u8>>,
}
impl KStruct for InstanceInSized_Bar {
    type Root = InstanceInSized;
    type Parent = InstanceInSized_Wrapper;

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
        *self_rc.seq_f.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl InstanceInSized_Bar {
    pub fn inst(
        &self
    ) -> KResult<Ref<'_, Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst.get() {
            return Ok(self.inst.borrow());
        }
        self.f_inst.set(true);
        let _pos = _io.pos();
        _io.seek((4 + 1) as usize)?;
        *self.inst.borrow_mut() = _io.read_bytes(3 as usize)?.into();
        _io.seek(_pos)?;
        Ok(self.inst.borrow())
    }
}
impl InstanceInSized_Bar {
    pub fn seq_f(&self) -> Ref<'_, u8> {
        self.seq_f.borrow()
    }
}
impl InstanceInSized_Bar {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceInSized_Baz {
    pub _root: SharedType<InstanceInSized>,
    pub _parent: SharedType<InstanceInSized_Wrapper>,
    pub _self: SharedType<Self>,
    seq_f: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_inst: Cell<bool>,
    inst: RefCell<Vec<u8>>,
}
impl KStruct for InstanceInSized_Baz {
    type Root = InstanceInSized;
    type Parent = InstanceInSized_Wrapper;

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
        *self_rc.seq_f.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl InstanceInSized_Baz {
    pub fn inst(
        &self
    ) -> KResult<Ref<'_, Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst.get() {
            return Ok(self.inst.borrow());
        }
        self.f_inst.set(true);
        let _pos = _io.pos();
        _io.seek((8 + 1) as usize)?;
        *self.inst.borrow_mut() = _io.read_bytes(3 as usize)?.into();
        _io.seek(_pos)?;
        Ok(self.inst.borrow())
    }
}
impl InstanceInSized_Baz {
    pub fn seq_f(&self) -> Ref<'_, u8> {
        self.seq_f.borrow()
    }
}
impl InstanceInSized_Baz {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceInSized_Qux {
    pub _root: SharedType<InstanceInSized>,
    pub _parent: SharedType<InstanceInSized_Wrapper>,
    pub _self: SharedType<Self>,
    seq_f: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_inst_invoked: Cell<bool>,
    inst_invoked: RefCell<u8>,
    f_inst_unused_by_seq: Cell<bool>,
    inst_unused_by_seq: RefCell<Vec<u8>>,
}
impl KStruct for InstanceInSized_Qux {
    type Root = InstanceInSized;
    type Parent = InstanceInSized_Wrapper;

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
        if ((*self_rc.inst_invoked()? as u8) > (0 as u8)) {
            *self_rc.seq_f.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl InstanceInSized_Qux {
    pub fn inst_invoked(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst_invoked.get() {
            return Ok(self.inst_invoked.borrow());
        }
        self.f_inst_invoked.set(true);
        let _pos = _io.pos();
        _io.seek(((_io.pos() as i32) + (1 as i32)) as usize)?;
        *self.inst_invoked.borrow_mut() = _io.read_u1()?.into();
        _io.seek(_pos)?;
        Ok(self.inst_invoked.borrow())
    }
    pub fn inst_unused_by_seq(
        &self
    ) -> KResult<Ref<'_, Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst_unused_by_seq.get() {
            return Ok(self.inst_unused_by_seq.borrow());
        }
        self.f_inst_unused_by_seq.set(true);
        let _pos = _io.pos();
        _io.seek(((_io.pos() as i32) + (1 as i32)) as usize)?;
        *self.inst_unused_by_seq.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        _io.seek(_pos)?;
        Ok(self.inst_unused_by_seq.borrow())
    }
}
impl InstanceInSized_Qux {
    pub fn seq_f(&self) -> Ref<'_, u8> {
        self.seq_f.borrow()
    }
}
impl InstanceInSized_Qux {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceInSized_Wrapper {
    pub _root: SharedType<InstanceInSized>,
    pub _parent: SharedType<InstanceInSized>,
    pub _self: SharedType<Self>,
    seq_sized: RefCell<OptRc<InstanceInSized_Qux>>,
    seq_in_stream: RefCell<OptRc<InstanceInSized_Bar>>,
    _io: RefCell<BytesReader>,
    seq_sized_raw: RefCell<Vec<u8>>,
    inst_sized_raw: RefCell<Vec<u8>>,
    f_inst_in_stream: Cell<bool>,
    inst_in_stream: RefCell<OptRc<InstanceInSized_Baz>>,
    f_inst_sized: Cell<bool>,
    inst_sized: RefCell<OptRc<InstanceInSized_Qux>>,
}
impl KStruct for InstanceInSized_Wrapper {
    type Root = InstanceInSized;
    type Parent = InstanceInSized;

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
        *self_rc.seq_sized_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        let seq_sized_raw = self_rc.seq_sized_raw.borrow();
        let _t_seq_sized_raw_io = BytesReader::from(seq_sized_raw.clone());
        let t = Self::read_into::<BytesReader, InstanceInSized_Qux>(&_t_seq_sized_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.seq_sized.borrow_mut() = t;
        let t = Self::read_into::<_, InstanceInSized_Bar>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.seq_in_stream.borrow_mut() = t;
        Ok(())
    }
}
impl InstanceInSized_Wrapper {
    pub fn inst_in_stream(
        &self
    ) -> KResult<Ref<'_, OptRc<InstanceInSized_Baz>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst_in_stream.get() {
            return Ok(self.inst_in_stream.borrow());
        }
        let _pos = _io.pos();
        _io.seek(((_io.pos() as i32) + (3 as i32)) as usize)?;
        let t = Self::read_into::<_, InstanceInSized_Baz>(&*_io, Some(self._root.clone()), Some(self._self.clone()))?.into();
        *self.inst_in_stream.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.inst_in_stream.borrow())
    }
    pub fn inst_sized(
        &self
    ) -> KResult<Ref<'_, OptRc<InstanceInSized_Qux>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst_sized.get() {
            return Ok(self.inst_sized.borrow());
        }
        let _pos = _io.pos();
        _io.seek(((_io.pos() as i32) + (7 as i32)) as usize)?;
        *self.inst_sized_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        let inst_sized_raw = self.inst_sized_raw.borrow();
        let _t_inst_sized_raw_io = BytesReader::from(inst_sized_raw.clone());
        let t = Self::read_into::<BytesReader, InstanceInSized_Qux>(&_t_inst_sized_raw_io, Some(self._root.clone()), Some(self._self.clone()))?.into();
        *self.inst_sized.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.inst_sized.borrow())
    }
}
impl InstanceInSized_Wrapper {
    pub fn seq_sized(&self) -> Ref<'_, OptRc<InstanceInSized_Qux>> {
        self.seq_sized.borrow()
    }
}
impl InstanceInSized_Wrapper {
    pub fn seq_in_stream(&self) -> Ref<'_, OptRc<InstanceInSized_Bar>> {
        self.seq_in_stream.borrow()
    }
}
impl InstanceInSized_Wrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl InstanceInSized_Wrapper {
    pub fn seq_sized_raw(&self) -> Ref<'_, Vec<u8>> {
        self.seq_sized_raw.borrow()
    }
}
impl InstanceInSized_Wrapper {
    pub fn inst_sized_raw(&self) -> Ref<'_, Vec<u8>> {
        self.inst_sized_raw.borrow()
    }
}
