// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class InstanceIoUserEarlier extends KaitaiStruct {
    public static InstanceIoUserEarlier fromFile(String fileName) throws IOException {
        return new InstanceIoUserEarlier(new ByteBufferKaitaiStream(fileName));
    }

    public InstanceIoUserEarlier(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceIoUserEarlier(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public InstanceIoUserEarlier(KaitaiStream _io, KaitaiStruct _parent, InstanceIoUserEarlier _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_sizedA = this._io.substream(6);
        this.sizedA = new Slot(_io_sizedA, this, _root);
        KaitaiStream _io_sizedB = this._io.substream(6);
        this.sizedB = new Slot(_io_sizedB, this, _root);
        this.intoB = new Foo(this._io, this, _root);
        this.intoASkipped = new Foo(this._io, this, _root);
        this.intoA = new Foo(this._io, this, _root);
        this.lastAccessor = new Baz(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.sizedA._fetchInstances();
        this.sizedB._fetchInstances();
        this.intoB._fetchInstances();
        this.intoASkipped._fetchInstances();
        this.intoA._fetchInstances();
        this.lastAccessor._fetchInstances();
        aMid();
        bMid();
    }
    public static class Baz extends KaitaiStruct {
        public static Baz fromFile(String fileName) throws IOException {
            return new Baz(new ByteBufferKaitaiStream(fileName));
        }

        public Baz(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Baz(KaitaiStream _io, InstanceIoUserEarlier _parent) {
            this(_io, _parent, null);
        }

        public Baz(KaitaiStream _io, InstanceIoUserEarlier _parent, InstanceIoUserEarlier _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            if (_parent().intoB().inst().last() == 89) {
                this.v = this._io.readU1();
            }
        }

        public void _fetchInstances() {
            if (_parent().intoB().inst().last() == 89) {
            }
        }
        private Integer v;
        private InstanceIoUserEarlier _root;
        private InstanceIoUserEarlier _parent;
        public Integer v() { return v; }
        public InstanceIoUserEarlier _root() { return _root; }
        public InstanceIoUserEarlier _parent() { return _parent; }
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, InstanceIoUserEarlier _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, InstanceIoUserEarlier _parent, InstanceIoUserEarlier _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.indicator = this._io.readU1();
            if ( ((inst()._io().size() != 0) && (inst().content() == 102)) ) {
                this.bar = this._io.readU1();
            }
        }

        public void _fetchInstances() {
            if ( ((inst()._io().size() != 0) && (inst().content() == 102)) ) {
            }
            inst();
            this.inst._fetchInstances();
        }
        private Slot inst;
        public Slot inst() {
            if (this.inst != null)
                return this.inst;
            KaitaiStream io = (indicator() == 202 ? _parent().sizedB()._io() : _parent().sizedA()._io());
            long _pos = io.pos();
            io.seek(1);
            KaitaiStream _io_inst = io.substream((_io().pos() != 14 ? 4 : 0));
            this.inst = new Slot(_io_inst, this, _root);
            io.seek(_pos);
            return this.inst;
        }
        private int indicator;
        private Integer bar;
        private InstanceIoUserEarlier _root;
        private InstanceIoUserEarlier _parent;
        public int indicator() { return indicator; }
        public Integer bar() { return bar; }
        public InstanceIoUserEarlier _root() { return _root; }
        public InstanceIoUserEarlier _parent() { return _parent; }
    }
    public static class Slot extends KaitaiStruct {
        public static Slot fromFile(String fileName) throws IOException {
            return new Slot(new ByteBufferKaitaiStream(fileName));
        }

        public Slot(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Slot(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public Slot(KaitaiStream _io, KaitaiStruct _parent, InstanceIoUserEarlier _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            if (_io().size() != 0) {
                this.content = this._io.readU1();
            }
        }

        public void _fetchInstances() {
            if (_io().size() != 0) {
            }
            if (_io().size() != 0) {
                last();
            }
        }
        private Integer last;
        public Integer last() {
            if (this.last != null)
                return this.last;
            if (_io().size() != 0) {
                long _pos = this._io.pos();
                this._io.seek(_io().size() - 1);
                this.last = this._io.readU1();
                this._io.seek(_pos);
            }
            return this.last;
        }
        private Integer content;
        private InstanceIoUserEarlier _root;
        private KaitaiStruct _parent;
        public Integer content() { return content; }
        public InstanceIoUserEarlier _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private Integer aMid;
    public Integer aMid() {
        if (this.aMid != null)
            return this.aMid;
        KaitaiStream io = intoA().inst()._io();
        long _pos = io.pos();
        io.seek(1);
        this.aMid = io.readU2le();
        io.seek(_pos);
        return this.aMid;
    }
    private Integer bMid;
    public Integer bMid() {
        if (this.bMid != null)
            return this.bMid;
        KaitaiStream io = intoB().inst()._io();
        long _pos = io.pos();
        io.seek(1);
        this.bMid = io.readU2le();
        io.seek(_pos);
        return this.bMid;
    }
    private Slot sizedA;
    private Slot sizedB;
    private Foo intoB;
    private Foo intoASkipped;
    private Foo intoA;
    private Baz lastAccessor;
    private InstanceIoUserEarlier _root;
    private KaitaiStruct _parent;
    public Slot sizedA() { return sizedA; }
    public Slot sizedB() { return sizedB; }
    public Foo intoB() { return intoB; }
    public Foo intoASkipped() { return intoASkipped; }
    public Foo intoA() { return intoA; }
    public Baz lastAccessor() { return lastAccessor; }
    public InstanceIoUserEarlier _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
