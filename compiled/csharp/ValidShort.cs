// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidShort : KaitaiStruct
    {
        public static ValidShort FromFile(string fileName)
        {
            return new ValidShort(new KaitaiStream(fileName));
        }

        public ValidShort(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidShort p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _magic1 = m_io.ReadBytes(6);
            _uint8 = m_io.ReadU1();
            _sint8 = m_io.ReadS1();
            _magicUint = System.Text.Encoding.GetEncoding("utf-8").GetString(m_io.ReadBytes(10));
            _uint16 = m_io.ReadU2le();
            _uint32 = m_io.ReadU4le();
            _uint64 = m_io.ReadU8le();
            _magicSint = System.Text.Encoding.GetEncoding("utf-8").GetString(m_io.ReadBytes(10));
            _sint16 = m_io.ReadS2le();
            _sint32 = m_io.ReadS4le();
            _sint64 = m_io.ReadS8le();
        }
        private byte[] _magic1;
        private byte _uint8;
        private sbyte _sint8;
        private string _magicUint;
        private ushort _uint16;
        private uint _uint32;
        private ulong _uint64;
        private string _magicSint;
        private short _sint16;
        private int _sint32;
        private long _sint64;
        private ValidShort m_root;
        private KaitaiStruct m_parent;
        public byte[] Magic1 { get { return _magic1; } }
        public byte Uint8 { get { return _uint8; } }
        public sbyte Sint8 { get { return _sint8; } }
        public string MagicUint { get { return _magicUint; } }
        public ushort Uint16 { get { return _uint16; } }
        public uint Uint32 { get { return _uint32; } }
        public ulong Uint64 { get { return _uint64; } }
        public string MagicSint { get { return _magicSint; } }
        public short Sint16 { get { return _sint16; } }
        public int Sint32 { get { return _sint32; } }
        public long Sint64 { get { return _sint64; } }
        public ValidShort M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
