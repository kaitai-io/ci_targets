// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class DefaultBigBitEndianImplicit : KaitaiStruct
    {
        public static DefaultBigBitEndianImplicit FromFile(string fileName)
        {
            return new DefaultBigBitEndianImplicit(new KaitaiStream(fileName));
        }

        public DefaultBigBitEndianImplicit(KaitaiStream p__io, KaitaiStruct p__parent = null, DefaultBigBitEndianImplicit p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadBitsInt(20);
        }
        private ulong _one;
        private DefaultBigBitEndianImplicit m_root;
        private KaitaiStruct m_parent;
        public ulong One { get { return _one; } }
        public DefaultBigBitEndianImplicit M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
