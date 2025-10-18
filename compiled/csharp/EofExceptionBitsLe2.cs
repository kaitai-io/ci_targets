// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EofExceptionBitsLe2 : KaitaiStruct
    {
        public static EofExceptionBitsLe2 FromFile(string fileName)
        {
            return new EofExceptionBitsLe2(new KaitaiStream(fileName));
        }

        public EofExceptionBitsLe2(KaitaiStream p__io, KaitaiStruct p__parent = null, EofExceptionBitsLe2 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _preBits = m_io.ReadBitsIntLe(8);
            _failBits = m_io.ReadBitsIntLe(17);
        }
        public ulong PreBits { get { return _preBits; } }
        public ulong FailBits { get { return _failBits; } }
        public EofExceptionBitsLe2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ulong _preBits;
        private ulong _failBits;
        private EofExceptionBitsLe2 m_root;
        private KaitaiStruct m_parent;
    }
}
