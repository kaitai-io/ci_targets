// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIoTernary extends KaitaiStruct {
    public static ExprIoTernary fromFile(String fileName) throws IOException {
        return new ExprIoTernary(new ByteBufferKaitaiStream(fileName));
    }

    public ExprIoTernary(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoTernary(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprIoTernary(KaitaiStream _io, KaitaiStruct _parent, ExprIoTernary _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.flag = this._io.readU1();
        KaitaiStream _io_obj1 = this._io.substream(4);
        this.obj1 = new One(_io_obj1, this, _root);
        KaitaiStream _io_obj2 = this._io.substream(8);
        this.obj2 = new Two(_io_obj2, this, _root);
    }
    public static class One extends KaitaiStruct {
        public static One fromFile(String fileName) throws IOException {
            return new One(new ByteBufferKaitaiStream(fileName));
        }

        public One(KaitaiStream _io) {
            this(_io, null, null);
        }

        public One(KaitaiStream _io, ExprIoTernary _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, ExprIoTernary _parent, ExprIoTernary _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.one = this._io.readU1();
        }
        private int one;
        private ExprIoTernary _root;
        private ExprIoTernary _parent;
        public int one() { return one; }
        public ExprIoTernary _root() { return _root; }
        public ExprIoTernary _parent() { return _parent; }
    }
    public static class Two extends KaitaiStruct {
        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, ExprIoTernary _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, ExprIoTernary _parent, ExprIoTernary _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.two = this._io.readU1();
        }
        private int two;
        private ExprIoTernary _root;
        private ExprIoTernary _parent;
        public int two() { return two; }
        public ExprIoTernary _root() { return _root; }
        public ExprIoTernary _parent() { return _parent; }
    }
    private KaitaiStream oneOrTwoIo;
    public KaitaiStream oneOrTwoIo() {
        if (this.oneOrTwoIo != null)
            return this.oneOrTwoIo;
        this.oneOrTwoIo = (flag() == 64 ? obj1() : obj2())._io();
        return this.oneOrTwoIo;
    }
    private Integer oneOrTwoIoSize1;
    public Integer oneOrTwoIoSize1() {
        if (this.oneOrTwoIoSize1 != null)
            return this.oneOrTwoIoSize1;
        int _tmp = (int) ((flag() == 64 ? obj1() : obj2())._io().size());
        this.oneOrTwoIoSize1 = _tmp;
        return this.oneOrTwoIoSize1;
    }
    private Integer oneOrTwoIoSize2;
    public Integer oneOrTwoIoSize2() {
        if (this.oneOrTwoIoSize2 != null)
            return this.oneOrTwoIoSize2;
        int _tmp = (int) (oneOrTwoIo().size());
        this.oneOrTwoIoSize2 = _tmp;
        return this.oneOrTwoIoSize2;
    }
    private Integer oneOrTwoIoSizeAdd3;
    public Integer oneOrTwoIoSizeAdd3() {
        if (this.oneOrTwoIoSizeAdd3 != null)
            return this.oneOrTwoIoSizeAdd3;
        int _tmp = (int) ((flag() == 64 ? obj1() : obj2())._io().size() + 3);
        this.oneOrTwoIoSizeAdd3 = _tmp;
        return this.oneOrTwoIoSizeAdd3;
    }
    private KaitaiStruct oneOrTwoObj;
    public KaitaiStruct oneOrTwoObj() {
        if (this.oneOrTwoObj != null)
            return this.oneOrTwoObj;
        this.oneOrTwoObj = (flag() == 64 ? obj1() : obj2());
        return this.oneOrTwoObj;
    }
    private int flag;
    private One obj1;
    private Two obj2;
    private ExprIoTernary _root;
    private KaitaiStruct _parent;
    public int flag() { return flag; }
    public One obj1() { return obj1; }
    public Two obj2() { return obj2; }
    public ExprIoTernary _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
