// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class InstanceInRepeatUntil extends KaitaiStruct {
    public static InstanceInRepeatUntil fromFile(String fileName) throws IOException {
        return new InstanceInRepeatUntil(new ByteBufferKaitaiStream(fileName));
    }

    public InstanceInRepeatUntil(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceInRepeatUntil(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public InstanceInRepeatUntil(KaitaiStream _io, KaitaiStruct _parent, InstanceInRepeatUntil _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
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
        if (this.untilVal != null) {
        }
    }
    private Short untilVal;
    public Short untilVal() {
        if (this.untilVal != null)
            return this.untilVal;
        long _pos = this._io.pos();
        this._io.seek(_io().pos() + 12);
        this.untilVal = this._io.readS2le();
        this._io.seek(_pos);
        return this.untilVal;
    }
    private List<Short> entries;
    private InstanceInRepeatUntil _root;
    private KaitaiStruct _parent;
    public List<Short> entries() { return entries; }
    public InstanceInRepeatUntil _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
