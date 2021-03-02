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
            f_isLe = false;
            f_ack = false;
            f_isGt2 = false;
            f_isGt = false;
            f_ack2 = false;
            f_isEq = false;
            f_isLt2 = false;
            f_isGe = false;
            f_hiVal = false;
            f_isNe = false;
            f_isLt = false;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadBytes(1);
            _two = m_io.ReadBytes(3);
        }
        private bool f_isLe;
        private bool _isLe;
        public bool IsLe
        {
            get
            {
                if (f_isLe)
                    return _isLe;
                _isLe = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack2) <= 0));
                f_isLe = true;
                return _isLe;
            }
        }
        private bool f_ack;
        private byte[] _ack;
        public byte[] Ack
        {
            get
            {
                if (f_ack)
                    return _ack;
                _ack = (byte[]) (new byte[] { 65, 67, 75 });
                f_ack = true;
                return _ack;
            }
        }
        private bool f_isGt2;
        private bool _isGt2;
        public bool IsGt2
        {
            get
            {
                if (f_isGt2)
                    return _isGt2;
                _isGt2 = (bool) ((KaitaiStream.ByteArrayCompare(HiVal, Two) > 0));
                f_isGt2 = true;
                return _isGt2;
            }
        }
        private bool f_isGt;
        private bool _isGt;
        public bool IsGt
        {
            get
            {
                if (f_isGt)
                    return _isGt;
                _isGt = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack2) > 0));
                f_isGt = true;
                return _isGt;
            }
        }
        private bool f_ack2;
        private byte[] _ack2;
        public byte[] Ack2
        {
            get
            {
                if (f_ack2)
                    return _ack2;
                _ack2 = (byte[]) (new byte[] { 65, 67, 75, 50 });
                f_ack2 = true;
                return _ack2;
            }
        }
        private bool f_isEq;
        private bool _isEq;
        public bool IsEq
        {
            get
            {
                if (f_isEq)
                    return _isEq;
                _isEq = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack) == 0));
                f_isEq = true;
                return _isEq;
            }
        }
        private bool f_isLt2;
        private bool _isLt2;
        public bool IsLt2
        {
            get
            {
                if (f_isLt2)
                    return _isLt2;
                _isLt2 = (bool) ((KaitaiStream.ByteArrayCompare(One, Two) < 0));
                f_isLt2 = true;
                return _isLt2;
            }
        }
        private bool f_isGe;
        private bool _isGe;
        public bool IsGe
        {
            get
            {
                if (f_isGe)
                    return _isGe;
                _isGe = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack2) >= 0));
                f_isGe = true;
                return _isGe;
            }
        }
        private bool f_hiVal;
        private byte[] _hiVal;
        public byte[] HiVal
        {
            get
            {
                if (f_hiVal)
                    return _hiVal;
                _hiVal = (byte[]) (new byte[] { 144, 67 });
                f_hiVal = true;
                return _hiVal;
            }
        }
        private bool f_isNe;
        private bool _isNe;
        public bool IsNe
        {
            get
            {
                if (f_isNe)
                    return _isNe;
                _isNe = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack) != 0));
                f_isNe = true;
                return _isNe;
            }
        }
        private bool f_isLt;
        private bool _isLt;
        public bool IsLt
        {
            get
            {
                if (f_isLt)
                    return _isLt;
                _isLt = (bool) ((KaitaiStream.ByteArrayCompare(Two, Ack2) < 0));
                f_isLt = true;
                return _isLt;
            }
        }
        private byte[] _one;
        private byte[] _two;
        private ExprBytesCmp m_root;
        private KaitaiStruct m_parent;
        public byte[] One { get { return _one; } }
        public byte[] Two { get { return _two; } }
        public ExprBytesCmp M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
