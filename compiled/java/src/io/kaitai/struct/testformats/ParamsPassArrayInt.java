// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;

public class ParamsPassArrayInt extends KaitaiStruct {
    public static ParamsPassArrayInt fromFile(String fileName) throws IOException {
        return new ParamsPassArrayInt(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassArrayInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayInt(KaitaiStream _io, KaitaiStruct _parent, ParamsPassArrayInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.ints = new ArrayList<Integer>();
        for (int i = 0; i < 3; i++) {
            this.ints.add(this._io.readU2le());
        }
        this.passInts = new WantsInts(this._io, this, _root, ints());
        this.passIntsCalc = new WantsInts(this._io, this, _root, intsCalc());
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.ints.size(); i++) {
        }
        this.passInts._fetchInstances();
        this.passIntsCalc._fetchInstances();
    }
    public static class WantsInts extends KaitaiStruct {

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
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        public List<Integer> nums() { return nums; }
        public ParamsPassArrayInt _root() { return _root; }
        public ParamsPassArrayInt _parent() { return _parent; }
        private List<Integer> nums;
        private ParamsPassArrayInt _root;
        private ParamsPassArrayInt _parent;
    }
    public List<Integer> intsCalc() {
        if (this.intsCalc != null)
            return this.intsCalc;
        this.intsCalc = new ArrayList<Integer>(Arrays.asList(27643, 7));
        return this.intsCalc;
    }
    public List<Integer> ints() { return ints; }
    public WantsInts passInts() { return passInts; }
    public WantsInts passIntsCalc() { return passIntsCalc; }
    public ParamsPassArrayInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Integer> intsCalc;
    private List<Integer> ints;
    private WantsInts passInts;
    private WantsInts passIntsCalc;
    private ParamsPassArrayInt _root;
    private KaitaiStruct _parent;
}
