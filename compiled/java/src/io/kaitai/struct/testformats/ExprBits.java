// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;

public class ExprBits extends KaitaiStruct {
    public static ExprBits fromFile(String fileName) throws IOException {
        return new ExprBits(new ByteBufferKaitaiStream(fileName));
    }

    public enum Items {
        FOO(1),
        BAR(2);

        private final long id;
        Items(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Items> byId = new HashMap<Long, Items>(2);
        static {
            for (Items e : Items.values())
                byId.put(e.id(), e);
        }
        public static Items byId(long id) { return byId.get(id); }
    }

    public ExprBits(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprBits(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprBits(KaitaiStream _io, KaitaiStruct _parent, ExprBits _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.enumSeq = Items.byId(this._io.readBitsIntBe(2));
        this.a = this._io.readBitsIntBe(3);
        this.byteSize = this._io.readBytes(a());
        this.repeatExpr = new ArrayList<Byte>();
        for (int i = 0; i < a(); i++) {
            this.repeatExpr.add(this._io.readS1());
        }
        switch (a()) {
        case 2: {
            this.switchOnType = this._io.readS1();
            break;
        }
        }
        this.switchOnEndian = new EndianSwitch(this._io, this, _root);
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.repeatExpr.size(); i++) {
        }
        switch (a()) {
        case 2: {
            break;
        }
        }
        this.switchOnEndian._fetchInstances();
        instPos();
        if (this.instPos != null) {
        }
    }
    public static class EndianSwitch extends KaitaiStruct {
        public static EndianSwitch fromFile(String fileName) throws IOException {
            return new EndianSwitch(new ByteBufferKaitaiStream(fileName));
        }
        private Boolean _is_le;

        public EndianSwitch(KaitaiStream _io) {
            this(_io, null, null);
        }

        public EndianSwitch(KaitaiStream _io, ExprBits _parent) {
            this(_io, _parent, null);
        }

        public EndianSwitch(KaitaiStream _io, ExprBits _parent, ExprBits _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            switch (_parent().a()) {
            case 1: {
                this._is_le = true;
                break;
            }
            case 2: {
                this._is_le = false;
                break;
            }
            }

            if (_is_le == null) {
                throw new KaitaiStream.UndecidedEndiannessError();
            } else if (_is_le) {
                _readLE();
            } else {
                _readBE();
            }
        }
        private void _readLE() {
            this.foo = this._io.readS2le();
        }
        private void _readBE() {
            this.foo = this._io.readS2be();
        }

        public void _fetchInstances() {
        }
        public short foo() { return foo; }
        public ExprBits _root() { return _root; }
        public ExprBits _parent() { return _parent; }
        private short foo;
        private ExprBits _root;
        private ExprBits _parent;
    }
    public Items enumInst() {
        if (this.enumInst != null)
            return this.enumInst;
        this.enumInst = Items.byId(a());
        return this.enumInst;
    }
    public Byte instPos() {
        if (this.instPos != null)
            return this.instPos;
        long _pos = this._io.pos();
        this._io.seek(a());
        this.instPos = this._io.readS1();
        this._io.seek(_pos);
        return this.instPos;
    }
    public Items enumSeq() { return enumSeq; }
    public long a() { return a; }
    public byte[] byteSize() { return byteSize; }
    public List<Byte> repeatExpr() { return repeatExpr; }
    public Byte switchOnType() { return switchOnType; }
    public EndianSwitch switchOnEndian() { return switchOnEndian; }
    public ExprBits _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Items enumInst;
    private Byte instPos;
    private Items enumSeq;
    private long a;
    private byte[] byteSize;
    private List<Byte> repeatExpr;
    private Byte switchOnType;
    private EndianSwitch switchOnEndian;
    private ExprBits _root;
    private KaitaiStruct _parent;
}
