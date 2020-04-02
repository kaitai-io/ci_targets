// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class Test extends KaitaiStruct {
    public static Test fromFile(String fileName) throws IOException {
        return new Test(new ByteBufferKaitaiStream(fileName));
    }

    public Test(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Test(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Test(KaitaiStream _io, KaitaiStruct _parent, Test _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.seqBlock = new Test.MyType(2)(this._io);
    }
    public static class MyType extends KaitaiStruct {

        public MyType(KaitaiStream _io, int repeatCount) {
            this(_io, null, null, repeatCount);
        }

        public MyType(KaitaiStream _io, KaitaiStruct _parent, int repeatCount) {
            this(_io, _parent, null, repeatCount);
        }

        public MyType(KaitaiStream _io, KaitaiStruct _parent, Test _root, int repeatCount) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.repeatCount = repeatCount;
            _read();
        }
        private void _read() {
            this.world = this._io.readS4be();
            repeatedThing = new ArrayList<Integer>(((Number) (repeatCount())).intValue());
            for (int i = 0; i < repeatCount(); i++) {
                this.repeatedThing.add(this._io.readS4be());
            }
        }
        private int world;
        private ArrayList<Integer> repeatedThing;
        private int repeatCount;
        private Test _root;
        private KaitaiStruct _parent;
        public int world() { return world; }
        public ArrayList<Integer> repeatedThing() { return repeatedThing; }
        public int repeatCount() { return repeatCount; }
        public Test _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private Test.MyType(2) seqBlock;
    private Test _root;
    private KaitaiStruct _parent;
    public Test.MyType(2) seqBlock() { return seqBlock; }
    public Test _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
