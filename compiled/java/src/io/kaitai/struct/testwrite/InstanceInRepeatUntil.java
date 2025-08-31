// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class InstanceInRepeatUntil extends KaitaiStruct.ReadWrite {
    public static InstanceInRepeatUntil fromFile(String fileName) throws IOException {
        return new InstanceInRepeatUntil(new ByteBufferKaitaiStream(fileName));
    }
    public InstanceInRepeatUntil() {
        this(null, null, null);
    }

    public InstanceInRepeatUntil(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceInRepeatUntil(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public InstanceInRepeatUntil(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceInRepeatUntil _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.entries = new ArrayList<Short>();
        {
            short _it;
            int i = 0;
            do {
                _it = this._io.readS2le();
                this.entries.add(_it);
                i++;
            } while (!(_it == untilVal()));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.entries.size(); i++) {
        }
        untilVal();
    }

    public void _write_Seq() {
        _writeUntilVal = _toWriteUntilVal;
        for (int i = 0; i < this.entries.size(); i++) {
            this._io.writeS2le(this.entries.get(((Number) (i)).intValue()));
            {
                short _it = this.entries.get(((Number) (i)).intValue());
                if ((_it == untilVal()) != (i == this.entries.size() - 1))
                    throw new ConsistencyError("entries", _it == untilVal(), i == this.entries.size() - 1);
            }
        }
    }

    public void _check() {
        if (this.entries.size() == 0)
            throw new ConsistencyError("entries", this.entries.size(), 0);
        for (int i = 0; i < this.entries.size(); i++) {
        }
    }
    private Short untilVal;
    private boolean _writeUntilVal = false;
    private boolean _toWriteUntilVal = true;
    public Short untilVal() {
        if (_writeUntilVal)
            _writeUntilVal();
        if (this.untilVal != null)
            return this.untilVal;
        long _pos = this._io.pos();
        this._io.seek(_io().pos() + 12);
        this.untilVal = this._io.readS2le();
        this._io.seek(_pos);
        return this.untilVal;
    }
    public void setUntilVal(short _v) { untilVal = _v; }
    public void setUntilVal_ToWrite(boolean _v) { _toWriteUntilVal = _v; }

    public void _writeUntilVal() {
        _writeUntilVal = false;
        long _pos = this._io.pos();
        this._io.seek(_io().pos() + 12);
        this._io.writeS2le(this.untilVal);
        this._io.seek(_pos);
    }

    public void _checkUntilVal() {
    }
    private List<Short> entries;
    private InstanceInRepeatUntil _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Short> entries() { return entries; }
    public void setEntries(List<Short> _v) { entries = _v; }
    public InstanceInRepeatUntil _root() { return _root; }
    public void set_root(InstanceInRepeatUntil _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
