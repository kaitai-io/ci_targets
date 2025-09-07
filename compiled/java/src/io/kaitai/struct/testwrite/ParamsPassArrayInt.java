// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;
import java.util.Arrays;

public class ParamsPassArrayInt extends KaitaiStruct.ReadWrite {
    public static ParamsPassArrayInt fromFile(String fileName) throws IOException {
        return new ParamsPassArrayInt(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassArrayInt() {
        this(null, null, null);
    }

    public ParamsPassArrayInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassArrayInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.ints = new ArrayList<Integer>();
        for (int i = 0; i < 3; i++) {
            this.ints.add(this._io.readU2le());
        }
        this.passInts = new WantsInts(this._io, this, _root, ints());
        this.passInts._read();
        this.passIntsCalc = new WantsInts(this._io, this, _root, intsCalc());
        this.passIntsCalc._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.ints.size(); i++) {
        }
        this.passInts._fetchInstances();
        this.passIntsCalc._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.ints.size(); i++) {
            this._io.writeU2le(this.ints.get(((Number) (i)).intValue()));
        }
        this.passInts._write_Seq(this._io);
        this.passIntsCalc._write_Seq(this._io);
    }

    public void _check() {
        if (this.ints.size() != 3)
            throw new ConsistencyError("ints", 3, this.ints.size());
        for (int i = 0; i < this.ints.size(); i++) {
        }
        if (!Objects.equals(this.passInts._root(), _root()))
            throw new ConsistencyError("pass_ints", _root(), this.passInts._root());
        if (!Objects.equals(this.passInts._parent(), this))
            throw new ConsistencyError("pass_ints", this, this.passInts._parent());
        if (!Objects.equals(this.passInts.nums(), ints()))
            throw new ConsistencyError("pass_ints", ints(), this.passInts.nums());
        if (!Objects.equals(this.passIntsCalc._root(), _root()))
            throw new ConsistencyError("pass_ints_calc", _root(), this.passIntsCalc._root());
        if (!Objects.equals(this.passIntsCalc._parent(), this))
            throw new ConsistencyError("pass_ints_calc", this, this.passIntsCalc._parent());
        if (!Objects.equals(this.passIntsCalc.nums(), intsCalc()))
            throw new ConsistencyError("pass_ints_calc", intsCalc(), this.passIntsCalc.nums());
        _dirty = false;
    }
    public static class WantsInts extends KaitaiStruct.ReadWrite {
        public WantsInts(List<Integer> nums) {
            this(null, null, null, nums);
        }

        public WantsInts(KaitaiStream _io, List<Integer> nums) {
            this(_io, null, null, nums);
        }

        public WantsInts(KaitaiStream _io, ParamsPassArrayInt _parent, List<Integer> nums) {
            this(_io, _parent, null, nums);
        }

        public WantsInts(KaitaiStream _io, ParamsPassArrayInt _parent, ParamsPassArrayInt _root, List<Integer> nums) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.nums = nums;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
        }

        public void _check() {
            _dirty = false;
        }
        private List<Integer> nums;
        private ParamsPassArrayInt _root;
        private ParamsPassArrayInt _parent;
        public List<Integer> nums() { return nums; }
        public void setNums(List<Integer> _v) { _dirty = true; nums = _v; }
        public ParamsPassArrayInt _root() { return _root; }
        public void set_root(ParamsPassArrayInt _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayInt _parent() { return _parent; }
        public void set_parent(ParamsPassArrayInt _v) { _dirty = true; _parent = _v; }
    }
    private List<Integer> intsCalc;
    public List<Integer> intsCalc() {
        if (this.intsCalc != null)
            return this.intsCalc;
        this.intsCalc = new ArrayList<Integer>(Arrays.asList(27643, 7));
        return this.intsCalc;
    }
    public void _invalidateIntsCalc() { this.intsCalc = null; }
    private List<Integer> ints;
    private WantsInts passInts;
    private WantsInts passIntsCalc;
    private ParamsPassArrayInt _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Integer> ints() { return ints; }
    public void setInts(List<Integer> _v) { _dirty = true; ints = _v; }
    public WantsInts passInts() { return passInts; }
    public void setPassInts(WantsInts _v) { _dirty = true; passInts = _v; }
    public WantsInts passIntsCalc() { return passIntsCalc; }
    public void setPassIntsCalc(WantsInts _v) { _dirty = true; passIntsCalc = _v; }
    public ParamsPassArrayInt _root() { return _root; }
    public void set_root(ParamsPassArrayInt _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
