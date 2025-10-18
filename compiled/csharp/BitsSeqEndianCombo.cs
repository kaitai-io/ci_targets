// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsSeqEndianCombo : KaitaiStruct
    {
        public static BitsSeqEndianCombo FromFile(string fileName)
        {
            return new BitsSeqEndianCombo(new KaitaiStream(fileName));
        }

        public BitsSeqEndianCombo(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsSeqEndianCombo p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _be1 = m_io.ReadBitsIntBe(6);
            _be2 = m_io.ReadBitsIntBe(10);
            _le3 = m_io.ReadBitsIntLe(8);
            _be4 = m_io.ReadBitsIntBe(8);
            _le5 = m_io.ReadBitsIntLe(5);
            _le6 = m_io.ReadBitsIntLe(6);
            _le7 = m_io.ReadBitsIntLe(5);
            _be8 = m_io.ReadBitsIntBe(1) != 0;
        }
        public ulong Be1 { get { return _be1; } }
        public ulong Be2 { get { return _be2; } }
        public ulong Le3 { get { return _le3; } }
        public ulong Be4 { get { return _be4; } }
        public ulong Le5 { get { return _le5; } }
        public ulong Le6 { get { return _le6; } }
        public ulong Le7 { get { return _le7; } }
        public bool Be8 { get { return _be8; } }
        public BitsSeqEndianCombo M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ulong _be1;
        private ulong _be2;
        private ulong _le3;
        private ulong _be4;
        private ulong _le5;
        private ulong _le6;
        private ulong _le7;
        private bool _be8;
        private BitsSeqEndianCombo m_root;
        private KaitaiStruct m_parent;
    }
}
