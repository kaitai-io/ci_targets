// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class IntegersDoubleOverflow : KaitaiStruct
    {
        public static IntegersDoubleOverflow FromFile(string fileName)
        {
            return new IntegersDoubleOverflow(new KaitaiStream(fileName));
        }

        public IntegersDoubleOverflow(KaitaiStream p__io, KaitaiStruct p__parent = null, IntegersDoubleOverflow p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_unsignedSafeMaxBe = false;
            f_unsignedSafeMaxLe = false;
            f_unsignedUnsafePosBe = false;
            f_unsignedUnsafePosLe = false;
            _read();
        }
        private void _read()
        {
            _signedSafeMinBe = m_io.ReadS8be();
            _signedSafeMinLe = m_io.ReadS8le();
            _signedSafeMaxBe = m_io.ReadS8be();
            _signedSafeMaxLe = m_io.ReadS8le();
            _signedUnsafeNegBe = m_io.ReadS8be();
            _signedUnsafeNegLe = m_io.ReadS8le();
            _signedUnsafePosBe = m_io.ReadS8be();
            _signedUnsafePosLe = m_io.ReadS8le();
        }
        private bool f_unsignedSafeMaxBe;
        private ulong _unsignedSafeMaxBe;
        public ulong UnsignedSafeMaxBe
        {
            get
            {
                if (f_unsignedSafeMaxBe)
                    return _unsignedSafeMaxBe;
                long _pos = m_io.Pos;
                m_io.Seek(16);
                _unsignedSafeMaxBe = m_io.ReadU8be();
                m_io.Seek(_pos);
                f_unsignedSafeMaxBe = true;
                return _unsignedSafeMaxBe;
            }
        }
        private bool f_unsignedSafeMaxLe;
        private ulong _unsignedSafeMaxLe;
        public ulong UnsignedSafeMaxLe
        {
            get
            {
                if (f_unsignedSafeMaxLe)
                    return _unsignedSafeMaxLe;
                long _pos = m_io.Pos;
                m_io.Seek(24);
                _unsignedSafeMaxLe = m_io.ReadU8le();
                m_io.Seek(_pos);
                f_unsignedSafeMaxLe = true;
                return _unsignedSafeMaxLe;
            }
        }
        private bool f_unsignedUnsafePosBe;
        private ulong _unsignedUnsafePosBe;
        public ulong UnsignedUnsafePosBe
        {
            get
            {
                if (f_unsignedUnsafePosBe)
                    return _unsignedUnsafePosBe;
                long _pos = m_io.Pos;
                m_io.Seek(48);
                _unsignedUnsafePosBe = m_io.ReadU8be();
                m_io.Seek(_pos);
                f_unsignedUnsafePosBe = true;
                return _unsignedUnsafePosBe;
            }
        }
        private bool f_unsignedUnsafePosLe;
        private ulong _unsignedUnsafePosLe;
        public ulong UnsignedUnsafePosLe
        {
            get
            {
                if (f_unsignedUnsafePosLe)
                    return _unsignedUnsafePosLe;
                long _pos = m_io.Pos;
                m_io.Seek(56);
                _unsignedUnsafePosLe = m_io.ReadU8le();
                m_io.Seek(_pos);
                f_unsignedUnsafePosLe = true;
                return _unsignedUnsafePosLe;
            }
        }
        private long _signedSafeMinBe;
        private long _signedSafeMinLe;
        private long _signedSafeMaxBe;
        private long _signedSafeMaxLe;
        private long _signedUnsafeNegBe;
        private long _signedUnsafeNegLe;
        private long _signedUnsafePosBe;
        private long _signedUnsafePosLe;
        private IntegersDoubleOverflow m_root;
        private KaitaiStruct m_parent;
        public long SignedSafeMinBe { get { return _signedSafeMinBe; } }
        public long SignedSafeMinLe { get { return _signedSafeMinLe; } }
        public long SignedSafeMaxBe { get { return _signedSafeMaxBe; } }
        public long SignedSafeMaxLe { get { return _signedSafeMaxLe; } }
        public long SignedUnsafeNegBe { get { return _signedUnsafeNegBe; } }
        public long SignedUnsafeNegLe { get { return _signedUnsafeNegLe; } }
        public long SignedUnsafePosBe { get { return _signedUnsafePosBe; } }
        public long SignedUnsafePosLe { get { return _signedUnsafePosLe; } }
        public IntegersDoubleOverflow M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
