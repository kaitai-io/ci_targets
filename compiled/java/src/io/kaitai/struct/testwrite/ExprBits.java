// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;

public class ExprBits extends KaitaiStruct.ReadWrite {
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
    public ExprBits() {
        this(null, null, null);
    }

    public ExprBits(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprBits(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprBits(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprBits _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
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
        this.switchOnEndian._read();
        _dirty = false;
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

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteInstPos = _enabledInstPos;
        this._io.writeBitsIntBe(2, ((Number) (this.enumSeq.id())).longValue());
        this._io.writeBitsIntBe(3, this.a);
        this._io.writeBytes(this.byteSize);
        for (int i = 0; i < this.repeatExpr.size(); i++) {
            this._io.writeS1(this.repeatExpr.get(((Number) (i)).intValue()));
        }
        switch (a()) {
        case 2: {
            this._io.writeS1(this.switchOnType);
            break;
        }
        }
        this.switchOnEndian._write_Seq(this._io);
    }

    public void _check() {
        if (this.byteSize.length != a())
            throw new ConsistencyError("byte_size", a(), this.byteSize.length);
        if (this.repeatExpr.size() != a())
            throw new ConsistencyError("repeat_expr", a(), this.repeatExpr.size());
        for (int i = 0; i < this.repeatExpr.size(); i++) {
        }
        switch (a()) {
        case 2: {
            break;
        }
        }
        if (!Objects.equals(this.switchOnEndian._root(), _root()))
            throw new ConsistencyError("switch_on_endian", _root(), this.switchOnEndian._root());
        if (!Objects.equals(this.switchOnEndian._parent(), this))
            throw new ConsistencyError("switch_on_endian", this, this.switchOnEndian._parent());
        if (_enabledInstPos) {
        }
        _dirty = false;
    }
    public static class EndianSwitch extends KaitaiStruct.ReadWrite {
        public static EndianSwitch fromFile(String fileName) throws IOException {
            return new EndianSwitch(new ByteBufferKaitaiStream(fileName));
        }
        private Boolean _is_le;
        public EndianSwitch() {
            this(null, null, null);
        }

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
        }
        public void _read() {
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
            _dirty = false;
        }
        private void _readLE() {
            this.foo = this._io.readS2le();
            _dirty = false;
        }
        private void _readBE() {
            this.foo = this._io.readS2be();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();

            if (_is_le == null) {
                throw new KaitaiStream.UndecidedEndiannessError();
            } else if (_is_le) {
                _write_SeqLE();
            } else {
                _write_SeqBE();
            }
        }

        private void _write_SeqLE() {
            this._io.writeS2le(this.foo);
        }

        private void _write_SeqBE() {
            this._io.writeS2be(this.foo);
        }

        public void _check() {
            _dirty = false;
        }
        public short foo() { return foo; }
        public void setFoo(short _v) { _dirty = true; foo = _v; }
        public ExprBits _root() { return _root; }
        public void set_root(ExprBits _v) { _dirty = true; _root = _v; }
        public ExprBits _parent() { return _parent; }
        public void set_parent(ExprBits _v) { _dirty = true; _parent = _v; }
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
    public void _invalidateEnumInst() { this.enumInst = null; }
    public Byte instPos() {
        if (_shouldWriteInstPos)
            _writeInstPos();
        if (this.instPos != null)
            return this.instPos;
        if (!_enabledInstPos)
            return null;
        long _pos = this._io.pos();
        this._io.seek(a());
        this.instPos = this._io.readS1();
        this._io.seek(_pos);
        return this.instPos;
    }
    public void setInstPos(byte _v) { _dirty = true; instPos = _v; }
    public void setInstPos_Enabled(boolean _v) { _dirty = true; _enabledInstPos = _v; }

    private void _writeInstPos() {
        _shouldWriteInstPos = false;
        long _pos = this._io.pos();
        this._io.seek(a());
        this._io.writeS1(this.instPos);
        this._io.seek(_pos);
    }
    public Items enumSeq() { return enumSeq; }
    public void setEnumSeq(Items _v) { _dirty = true; enumSeq = _v; }
    public long a() { return a; }
    public void setA(long _v) { _dirty = true; a = _v; }
    public byte[] byteSize() { return byteSize; }
    public void setByteSize(byte[] _v) { _dirty = true; byteSize = _v; }
    public List<Byte> repeatExpr() { return repeatExpr; }
    public void setRepeatExpr(List<Byte> _v) { _dirty = true; repeatExpr = _v; }
    public Byte switchOnType() { return switchOnType; }
    public void setSwitchOnType(Byte _v) { _dirty = true; switchOnType = _v; }
    public EndianSwitch switchOnEndian() { return switchOnEndian; }
    public void setSwitchOnEndian(EndianSwitch _v) { _dirty = true; switchOnEndian = _v; }
    public ExprBits _root() { return _root; }
    public void set_root(ExprBits _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Items enumInst;
    private Byte instPos;
    private boolean _shouldWriteInstPos = false;
    private boolean _enabledInstPos = true;
    private Items enumSeq;
    private long a;
    private byte[] byteSize;
    private List<Byte> repeatExpr;
    private Byte switchOnType;
    private EndianSwitch switchOnEndian;
    private ExprBits _root;
    private KaitaiStruct.ReadWrite _parent;
}
