// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils.Counter.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract SubscriptionModel {
    mapping (uint256 => uint64) internal _expirations;

    /// @notice Emitted when a subscription expiration changes
    /// @dev When a subscription is cancelled, the expiration value should also be 0.
    event SubscriptionUpdate(uint256 indexed tokenId, uint64 expiration);

    /// @notice Renews the subscription to an NFT
    /// Throws if 'tokenId' is not a valid NFT
    /// @param _tokenId The NFT to renew the subscription for
    /// @param duration The number of seconds to extend a subscription for
    function renewSubscription(
        uint256 _tokenId,
        uint64 duration
    ) external payable {
        uint64 currentExpiration = _expirations[_tokenId];
        uint64 newExpiration;
        if (currentExpiration == 0) {
            newExpiration = uint64(block.timestamp) + duration;
        } else {
            require(isRenewable(_tokenId), "Subscription is not renewable");
            newExpiration = currentExpiration + duration;
        }
        _expirations[_tokenId] = newExpiration;
        emit SubscriptionUpdate(_tokenId, newExpiration);
    }

    
}