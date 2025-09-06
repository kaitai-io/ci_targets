// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import io.kaitai.struct.ConsistencyError;


/**
 * describes the first 4 header bytes of a TS Packet header
 */
public class TsPacketHeader extends KaitaiStruct.ReadWrite {
    public static TsPacketHeader fromFile(String fileName) throws IOException {
        return new TsPacketHeader(new ByteBufferKaitaiStream(fileName));
    }

    public enum AdaptationFieldControlEnum {
        RESERVED(0),
        PAYLOAD_ONLY(1),
        ADAPTATION_FIELD_ONLY(2),
        ADAPTATION_FIELD_AND_PAYLOAD(3);

        private final long id;
        AdaptationFieldControlEnum(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, AdaptationFieldControlEnum> byId = new HashMap<Long, AdaptationFieldControlEnum>(4);
        static {
            for (AdaptationFieldControlEnum e : AdaptationFieldControlEnum.values())
                byId.put(e.id(), e);
        }
        public static AdaptationFieldControlEnum byId(long id) { return byId.get(id); }
    }
    public TsPacketHeader() {
        this(null, null, null);
    }

    public TsPacketHeader(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TsPacketHeader(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TsPacketHeader(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TsPacketHeader _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.syncByte = this._io.readU1();
        this.transportErrorIndicator = this._io.readBitsIntBe(1) != 0;
        this.payloadUnitStartIndicator = this._io.readBitsIntBe(1) != 0;
        this.transportPriority = this._io.readBitsIntBe(1) != 0;
        this.pid = this._io.readBitsIntBe(13);
        this.transportScramblingControl = this._io.readBitsIntBe(2);
        this.adaptationFieldControl = AdaptationFieldControlEnum.byId(this._io.readBitsIntBe(2));
        this.continuityCounter = this._io.readBitsIntBe(4);
        this.tsPacketRemain = this._io.readBytes(184);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.syncByte);
        this._io.writeBitsIntBe(1, (this.transportErrorIndicator ? 1 : 0));
        this._io.writeBitsIntBe(1, (this.payloadUnitStartIndicator ? 1 : 0));
        this._io.writeBitsIntBe(1, (this.transportPriority ? 1 : 0));
        this._io.writeBitsIntBe(13, this.pid);
        this._io.writeBitsIntBe(2, this.transportScramblingControl);
        this._io.writeBitsIntBe(2, ((Number) (this.adaptationFieldControl.id())).longValue());
        this._io.writeBitsIntBe(4, this.continuityCounter);
        this._io.writeBytes(this.tsPacketRemain);
    }

    public void _check() {
        if (this.tsPacketRemain.length != 184)
            throw new ConsistencyError("ts_packet_remain", this.tsPacketRemain.length, 184);
        _dirty = false;
    }
    private int syncByte;
    private boolean transportErrorIndicator;
    private boolean payloadUnitStartIndicator;
    private boolean transportPriority;
    private long pid;
    private long transportScramblingControl;
    private AdaptationFieldControlEnum adaptationFieldControl;
    private long continuityCounter;
    private byte[] tsPacketRemain;
    private TsPacketHeader _root;
    private KaitaiStruct.ReadWrite _parent;
    public int syncByte() { return syncByte; }
    public void setSyncByte(int _v) { _dirty = true; syncByte = _v; }
    public boolean transportErrorIndicator() { return transportErrorIndicator; }
    public void setTransportErrorIndicator(boolean _v) { _dirty = true; transportErrorIndicator = _v; }
    public boolean payloadUnitStartIndicator() { return payloadUnitStartIndicator; }
    public void setPayloadUnitStartIndicator(boolean _v) { _dirty = true; payloadUnitStartIndicator = _v; }
    public boolean transportPriority() { return transportPriority; }
    public void setTransportPriority(boolean _v) { _dirty = true; transportPriority = _v; }
    public long pid() { return pid; }
    public void setPid(long _v) { _dirty = true; pid = _v; }
    public long transportScramblingControl() { return transportScramblingControl; }
    public void setTransportScramblingControl(long _v) { _dirty = true; transportScramblingControl = _v; }
    public AdaptationFieldControlEnum adaptationFieldControl() { return adaptationFieldControl; }
    public void setAdaptationFieldControl(AdaptationFieldControlEnum _v) { _dirty = true; adaptationFieldControl = _v; }
    public long continuityCounter() { return continuityCounter; }
    public void setContinuityCounter(long _v) { _dirty = true; continuityCounter = _v; }
    public byte[] tsPacketRemain() { return tsPacketRemain; }
    public void setTsPacketRemain(byte[] _v) { _dirty = true; tsPacketRemain = _v; }
    public TsPacketHeader _root() { return _root; }
    public void set_root(TsPacketHeader _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
