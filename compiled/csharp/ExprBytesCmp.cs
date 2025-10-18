// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprBytesCmp : KaitaiStruct
    {
        public static ExprBytesCmp FromFile(string fileName)
        {
            return new ExprBytesCmp(new KaitaiStream(fileName));
        }

        public ExprBytesCmp(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprBytesCmp p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_ack = false;
            f_ack2 = false;
            f_hiVal = false;
            f_isEq = false;
            f_isGe = false;
            f_isGt = false;
            f_isGt2 = false;
            f_isLe = false;
            f_isLt = false;
            f_isLt2 = false;
            f_isNe = false;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadBytes(1);
            _two = m_io.ReadBytes(3);
        }
        public byte[] Ack
        {
            get
            {
                if (f_ack)
                    return _ack;
                f_ack = true;
                _ack = (byte[]) (new byte[] { 65, 67, 75 });
                return _ack;
            }
        }
        public byte[] Ack2
        {
            get
            {
                if (f_ack2)
                    return _ack2;
                f_ack2 = true;
                _ack2 = (byte[]) (new byte[] { 65, 67, 75, 50 });
                return _ack2;
            }
        }
        public byte[] HiVal
        {
            get
            {
                if (f_hiVal)
                    return _hiVal;
                f_hiVal = true;
                _hiVal = (byte[]) (new byte[] { 144, 67 });
                return _hiVal;
            }
        }
        public bool IsEq
        {
            get
            {
                if (f_isEq)
                    return _isEq;
                f_isEq = true;
                _isEq = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack) == 0));
                return _isEq;
            }
        }
        public bool IsGe
        {
            get
            {
                if (f_isGe)
                    return _isGe;
                f_isGe = true;
                _isGe = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack2) >= 0));
                return _isGe;
            }
        }
        public bool IsGt
        {
            get
            {
                if (f_isGt)
                    return _isGt;
                f_isGt = true;
                _isGt = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack2) > 0));
                return _isGt;
            }
        }
        public bool IsGt2
        {
            get
            {
                if (f_isGt2)
                    return _isGt2;
                f_isGt2 = true;
                _isGt2 = (bool) ((KaitaiStream.ByteArrayCompare(HiVal, Two) > 0));
                return _isGt2;
            }
        }
        public bool IsLe
        {
            get
            {
                if (f_isLe)
                    return _isLe;
                f_isLe = true;
                _isLe = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack2) <= 0));
                return _isLe;
            }
        }
        public bool IsLt
        {
            get
            {
                if (f_isLt)
                    return _isLt;
                f_isLt = true;
                _isLt = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack2) < 0));
                return _isLt;
            }
        }
        public bool IsLt2
        {
            get
            {
                if (f_isLt2)
                    return _isLt2;
                f_isLt2 = true;
                _isLt2 = (bool) ((KaitaiStream.ByteArrayCompare(One, Two) < 0));
                return _isLt2;
            }
        }
        public bool IsNe
        {
            get
            {
                if (f_isNe)
                    return _isNe;
                f_isNe = true;
                _isNe = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack) != 0));
                return _isNe;
            }
        }
        public byte[] One { get { return _one; } }
        public byte[] Two { get { return _two; } }
        public ExprBytesCmp M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_ack;
        private byte[] _ack;
        private bool f_ack2;
        private byte[] _ack2;
        private bool f_hiVal;
        private byte[] _hiVal;
        private bool f_isEq;
        private bool _isEq;
        private bool f_isGe;
        private bool _isGe;
        private bool f_isGt;
        private bool _isGt;
        private bool f_isGt2;
        private bool _isGt2;
        private bool f_isLe;
        private bool _isLe;
        private bool f_isLt;
        private bool _isLt;
        private bool f_isLt2;
        private bool _isLt2;
        private bool f_isNe;
        private bool _isNe;
        private byte[] _one;
        private byte[] _two;
        private ExprBytesCmp m_root;
        private KaitaiStruct m_parent;
    }
}
