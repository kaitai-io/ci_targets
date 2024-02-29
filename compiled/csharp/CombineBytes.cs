// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class CombineBytes : KaitaiStruct
    {
        public static CombineBytes FromFile(string fileName)
        {
            return new CombineBytes(new KaitaiStream(fileName));
        }

        public CombineBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, CombineBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_termOrEos = false;
            f_termOrLimit = false;
            f_limitOrCalc = false;
            f_termOrCalc = false;
            f_limitOrEos = false;
            f_bytesCalc = false;
            f_eosOrCalc = false;
            _read();
        }
        private void _read()
        {
            _bytesTerm = m_io.ReadBytesTerm(124, false, true, true);
            _bytesLimit = m_io.ReadBytes(4);
            _bytesEos = m_io.ReadBytesFull();
        }
        private bool f_termOrEos;
        private byte[] _termOrEos;
        public byte[] TermOrEos
        {
            get
            {
                if (f_termOrEos)
                    return _termOrEos;
                _termOrEos = (byte[]) ((false ? BytesTerm : BytesEos));
                f_termOrEos = true;
                return _termOrEos;
            }
        }
        private bool f_termOrLimit;
        private byte[] _termOrLimit;
        public byte[] TermOrLimit
        {
            get
            {
                if (f_termOrLimit)
                    return _termOrLimit;
                _termOrLimit = (byte[]) ((true ? BytesTerm : BytesLimit));
                f_termOrLimit = true;
                return _termOrLimit;
            }
        }
        private bool f_limitOrCalc;
        private byte[] _limitOrCalc;
        public byte[] LimitOrCalc
        {
            get
            {
                if (f_limitOrCalc)
                    return _limitOrCalc;
                _limitOrCalc = (byte[]) ((false ? BytesLimit : BytesCalc));
                f_limitOrCalc = true;
                return _limitOrCalc;
            }
        }
        private bool f_termOrCalc;
        private byte[] _termOrCalc;
        public byte[] TermOrCalc
        {
            get
            {
                if (f_termOrCalc)
                    return _termOrCalc;
                _termOrCalc = (byte[]) ((true ? BytesTerm : BytesCalc));
                f_termOrCalc = true;
                return _termOrCalc;
            }
        }
        private bool f_limitOrEos;
        private byte[] _limitOrEos;
        public byte[] LimitOrEos
        {
            get
            {
                if (f_limitOrEos)
                    return _limitOrEos;
                _limitOrEos = (byte[]) ((true ? BytesLimit : BytesEos));
                f_limitOrEos = true;
                return _limitOrEos;
            }
        }
        private bool f_bytesCalc;
        private byte[] _bytesCalc;
        public byte[] BytesCalc
        {
            get
            {
                if (f_bytesCalc)
                    return _bytesCalc;
                _bytesCalc = (byte[]) (new byte[] { 82, 110, 68 });
                f_bytesCalc = true;
                return _bytesCalc;
            }
        }
        private bool f_eosOrCalc;
        private byte[] _eosOrCalc;
        public byte[] EosOrCalc
        {
            get
            {
                if (f_eosOrCalc)
                    return _eosOrCalc;
                _eosOrCalc = (byte[]) ((true ? BytesEos : BytesCalc));
                f_eosOrCalc = true;
                return _eosOrCalc;
            }
        }
        private byte[] _bytesTerm;
        private byte[] _bytesLimit;
        private byte[] _bytesEos;
        private CombineBytes m_root;
        private KaitaiStruct m_parent;
        public byte[] BytesTerm { get { return _bytesTerm; } }
        public byte[] BytesLimit { get { return _bytesLimit; } }
        public byte[] BytesEos { get { return _bytesEos; } }
        public CombineBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
